<!--#include file="header.asp"-->

    <div class="mast-head">
        <div class="container">
            <h1 class="quote-title">New Quote <small>Something else</small></h1>
        </div>
    </div>


<div class="page-alerts">
    <div class="alert alert-success page-alert" id="alert-1">
        <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <strong>Well done!</strong> You successfully read this important alert message.
    </div>
    <div class="alert alert-info page-alert" id="alert-2">
        <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
    </div>
    <div class="alert alert-warning page-alert" id="alert-3">
        <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <strong>Warning!</strong> Best check yo self, you're not looking too good.
    </div>
    <div class="alert alert-danger page-alert" id="alert-4">
        <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <strong>Oh snap!</strong> Change a few things up and try submitting again.
    </div>
    <div class="alert alert-success page-alert" id="alert-5">
        <button type="button" class="close"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
        <strong>Cool!</strong> This alert will close in 3 seconds. The data-delay attribute is in milliseconds.
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2>Page Alerts</h2>

            <div class="row">
                <div class="col-md-2"><button data-toggle="page-alert" data-toggle-id="1" class="btn btn-success btn-block">Show success</button></div>
                <div class="col-md-2"><button data-toggle="page-alert" data-toggle-id="2" class="btn btn-info btn-block">Show info</button></div>
                <div class="col-md-2"><button data-toggle="page-alert" data-toggle-id="3" class="btn btn-warning btn-block">Show warning</button></div>
                <div class="col-md-2"><button data-toggle="page-alert" data-toggle-id="4" class="btn btn-danger btn-block">Show danger</button></div>
                <div class="col-md-2"><button data-toggle="page-alert" data-delay="3000" data-toggle-id="5" class="btn btn-info btn-block">Auto closing alert</button></div>
                <div class="col-md-2"><button class="btn btn-default btn-block clear-page-alerts">Clear all</button></div>
            </div>
        </div>
    </div>
</div>

    <div class="container">
        <div>
            <h2>Misc. Elements</h2>

            <hr>
        <div class="alert alert-warning">
            This feature does not currently support SELECT tags - I'm still working out a way to make them work with Bootstrap's native examples.
        </div>
        </div>
    </div>
<!--#include file="footer.asp"-->

