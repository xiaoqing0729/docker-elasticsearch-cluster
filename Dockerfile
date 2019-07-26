FROM elastic/elasticsearch:7.2.0
MAINTAINER dazuimao1990 <guox@goodrain.com>
COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/local/bin/docker-entrypoint.sh","eswrapper"]
