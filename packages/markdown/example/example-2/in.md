Footnotes[^1] have a label[^@#$%] and the footnote's content.

[^1]: This is a footnote content.
[^@#$%]: A footnote on the label: "@#$%".

First Header  | Second Header
------------- | -------------
Content Cell  | Content Cell
Content Cell  | Content Cell

    #!/usr/bin/python
    # Code goes here ...

    import BaseHTTPServer
    import CGIHTTPServer
    import cgitb; cgitb.enable()  ## This line enables CGI error reporting

    server = BaseHTTPServer.HTTPServer
    handler = CGIHTTPServer.CGIHTTPRequestHandler
    server_address = ("", 8000)
    handler.cgi_directories = ["/"]
