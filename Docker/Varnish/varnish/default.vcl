vcl 4.0;

backend default {
    .host = "haproxy";
    .port = "8096";
}

sub vcl_backend_response {
  set beresp.ttl = 6h;
}
