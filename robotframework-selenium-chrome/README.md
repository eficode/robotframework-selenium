# Robotframework Selenium Chrome

First save [example.robot](https://github.com/Eficode/robotframework-selenium/blob/master/robotframework-selenium-chrome/example.robot)

**Run Example Test:**
```
docker run -it \
    -v $(pwd)/example.robot:/tests/example.robot:ro \
    -v $(pwd)/out:/out:rw \
    eficode/robotframework-selenium-chrome \
      --outputdir /out /tests
```

Output files will be in a new directory *out*.

Godspeed.
