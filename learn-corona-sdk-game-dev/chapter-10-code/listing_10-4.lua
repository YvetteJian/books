function networkListener(inEvent)
  if (inEvent.isError) then
    print("Network error!");
  else
    print(inEvent.response);
  end
end

network.request(
  "http://tycho.usno.navy.mil/cgi-bin/timer.pl", "GET", networkListener
);
