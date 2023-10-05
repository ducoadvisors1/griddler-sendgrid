FROM ruby:3.1.4-bullseye

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

RUN apt-get -q update -yqq && apt-get install -yqq --no-install-recommends \
  apt-utils \
  bash-completion \
  sudo \
  libnss3 \
  vim

RUN useradd --create-home --shell /bin/bash --user-group dev && \
  echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir /project
RUN chown dev:dev /project

USER dev
SHELL ["/bin/bash", "-l", "-c"]

WORKDIR /project

COPY --chown=dev ./ /project/

RUN gem install bundler
RUN bundle install
RUN bundle binstubs --all
RUN bundle update --bundler

RUN echo "export PATH=$PATH:/project/bin" >> ~/.bashrc

COPY --chown=dev . /project/

CMD [ "$@" ]
