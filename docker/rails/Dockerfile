# ご自身のRubyのバージョンに合わせてください
FROM ruby:3.1.0
RUN apt-get update -qq && \
apt-get install  -y --no-install-recommends \
build-essential \
default-mysql-client \
less \
nodejs \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# ご自身のアプリ名にすると良い(任意)
ENV APP_ROOT /movie-review

# Set working directory as APP_ROOT
WORKDIR $APP_ROOT

# Add Gemfile
COPY Gemfile* ./

# Install Gemfile's bundle
RUN bundle install
COPY . ./
EXPOSE 3001




