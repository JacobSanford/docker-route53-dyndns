FROM phusion/baseimage
MAINTAINER Jacob Sanford <jsanford_at_unb.ca>

# Use the phusion/baseimage init system
CMD ["/sbin/my_init"]

# Install Route53
RUN apt-get update && apt-get install -y git python python-pip && apt-get clean
RUN git clone git://github.com/JacobSanford/route-53-dyndns.git route53-dyndns
RUN cd route53-dyndns; pip install -r requirements.txt
RUN mv route53-dyndns /opt

# Init system files
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run; chmod -v +x /etc/my_init.d/*.sh
