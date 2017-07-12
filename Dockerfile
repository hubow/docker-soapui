# Download base image
FROM openjdk:8-jre

#  SoapUi Version
ENV SOAPUI_VERSION 5.3.0

# Install SoapUI
RUN \
        java -version && \
        update-alternatives --config java && \
        curl http://cdn01.downloads.smartbear.com/soapui/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz \
        | gunzip -c - | tar -xf - -C /opt

# Set environment
ENV PATH ${PATH}:/opt/SoapUI-${SOAPUI_VERSION}/bin

ENTRYPOINT ["testrunner.sh"]
