package Selenium::Remote::Commands;

# ABSTRACT: Implement commands for Selenium::Remote::Driver

use Moo;

has '_cmds' => (
    is      => 'lazy',
    reader  => 'get_cmds',
    builder => sub {
        return {
            'status' => {
                'method' => 'GET',
                'url'    => 'status'
            },
            'newSession' => {
                'method' => 'POST',
                'url'    => 'session'
            },
            'getSessions' => {
                'method' => 'GET',
                'url'    => 'sessions'
            },
            'getCapabilities' => {
                'method' => 'GET',
                'url'    => 'session/:sessionId'
            },
            'setTimeout' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/timeouts'
            },
            'setAsyncScriptTimeout' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/timeouts/async_script'
            },
            'setImplicitWaitTimeout' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/timeouts/implicit_wait'
            },
            'quit' => {
                'method' => 'DELETE',
                'url'    => "session/:sessionId"
            },
            'getCurrentWindowHandle' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/window_handle"
            },
            'getWindowHandles' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/window_handles"
            },
            'getWindowSize' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/window/:windowHandle/size"
            },
            'getWindowPosition' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/window/:windowHandle/position"
            },
            'setWindowSize' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/window/:windowHandle/size"
            },
            'setWindowPosition' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/window/:windowHandle/position"
            },
            'getCurrentUrl' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/url"
            },
            'get' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/url"
            },
            'goForward' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/forward"
            },
            'goBack' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/back"
            },
            'refresh' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/refresh"
            },
            'executeScript' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/execute"
            },
            'executeAsyncScript' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/execute_async"
            },
            'screenshot' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/screenshot"
            },
            'availableEngines' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/ime/available_engines"
            },
            'switchToFrame' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/frame"
            },
            'switchToWindow' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/window"
            },
            'getAllCookies' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/cookie"
            },
            'addCookie' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/cookie"
            },
            'deleteAllCookies' => {
                'method' => 'DELETE',
                'url'    => "session/:sessionId/cookie"
            },
            'deleteCookieNamed' => {
                'method' => 'DELETE',
                'url'    => "session/:sessionId/cookie/:name"
            },
            'getPageSource' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/source"
            },
            'getTitle' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/title"
            },
            'findElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element"
            },
            'findElements' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/elements"
            },
            'getActiveElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/active"
            },
            'describeElement' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id"
            },
            'findChildElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/element"
            },
            'findChildElements' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/elements"
            },
            'clickElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/click"
            },
            'submitElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/submit"
            },
            'sendKeysToElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/value"
            },
            'sendKeysToActiveElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/keys"
            },
            'sendModifier' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/modifier"
            },
            'isElementSelected' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/selected"
            },
            'setElementSelected' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/selected"
            },
            'toggleElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/toggle"
            },
            'isElementEnabled' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/enabled"
            },
            'getElementLocation' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/location"
            },
            'getElementLocationInView' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/location_in_view"
            },
            'getElementTagName' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/name"
            },
            'clearElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/clear"
            },
            'getElementAttribute' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/attribute/:name"
            },
            'elementEquals' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/equals/:other"
            },
            'isElementDisplayed' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/displayed"
            },
            'close' => {
                'method' => 'DELETE',
                'url'    => "session/:sessionId/window"
            },
            'dragElement' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/element/:id/drag"
            },
            'getElementSize' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/size"
            },
            'getElementText' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/text"
            },
            'getElementValueOfCssProperty' => {
                'method' => 'GET',
                'url'    => "session/:sessionId/element/:id/css/:propertyName"
            },
            'mouseMoveToLocation' => {
                'method' => 'POST',
                'url'    => "session/:sessionId/moveto"
            },
            'getAlertText' => {
                'method' => 'GET',
                'url'    => 'session/:sessionId/alert_text'
            },
            'sendKeysToPrompt' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/alert_text'
            },
            'acceptAlert' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/accept_alert'
            },
            'dismissAlert' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/dismiss_alert'
            },
            'click' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/click'
            },
            'doubleClick' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/doubleclick'
            },
            'buttonDown' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/buttondown'
            },
            'buttonUp' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/buttonup'
            },
            'uploadFile' => {
                'method' => 'POST',
                'url'    => 'session/:sessionId/file'
            },

            #'setVisible' => {
            #               'method' => 'POST',
            #               'url' => "session/:sessionId/visible"
            #},
            #'getVisible' => {
            #               'method' => 'GET',
            #               'url' => "session/:sessionId/visible"
            #},
        };
    }
);

# helper methods to manipulate the _cmds hash
sub get_url {
    my ( $self, $command ) = @_;
    return $self->get_cmds->{$command}->{url};
}

sub get_method {
    my ( $self, $command ) = @_;
    return $self->get_cmds->{$command}->{method};
}

# This method will replace the template & return
sub get_params {
    my ( $self, $args ) = @_;
    if ( !( defined $args->{'session_id'} ) ) {
        return;
    }
    my $data    = {};
    my $command = $args->{'command'};
    my $url     = $self->get_url($command);

    # Do the var substitutions.
    $url =~ s/:sessionId/$args->{'session_id'}/;
    $url =~ s/:id/$args->{'id'}/;
    $url =~ s/:name/$args->{'name'}/;
    $url =~ s/:propertyName/$args->{'property_name'}/;
    $url =~ s/:other/$args->{'other'}/;
    $url =~ s/:windowHandle/$args->{'window_handle'}/;

    $data->{'method'} = $self->get_method($command);
    $data->{'url'}    = $url;

    return $data;
}

1;

__END__
