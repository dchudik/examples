CREATE TABLE `schedule`
(
    id          Utf8,
    spec_id     Utf8,
    doctor_id   Utf8,
    place_id    Utf8,
    at          DateTime,
    `date`      Date,
    patient     Utf8,
    booked_till DateTime,
    PRIMARY KEY (id, spec_id, doctor_id, place_id, at, `date`),
    INDEX       booked GLOBAL ON (patient, booked_till)
);
COMMIT;


$mkdtime = DateTime::MakeDatetime;
$mkdate = DateTime::MakeDate;
$parse = DateTime::ParseIso8601;

INSERT INTO `schedule`
    (id, spec_id, doctor_id, place_id, at, `date`)
VALUES ("8C56C4CC62F9", "A28A6D69362B", "31C7128D8ECF", "D8A35114835B",
        $mkdtime($parse("2021-03-14T10:00:00+0300")), $mkdate($parse("2021-03-14T10:00:00+0300"))),
       ("DB11D622B8C8", "A28A6D69362B", "31C7128D8ECF", "D8A35114835B",
        $mkdtime($parse("2021-03-14T10:30:00+0300")), $mkdate($parse("2021-03-14T10:30:00+0300"))),
       ("FF92437F3BCA", "A28A6D69362B", "31C7128D8ECF", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T14:00:00+0300")), $mkdate($parse("2021-03-15T14:00:00+0300"))),
       ("EBDE77F3D886", "A28A6D69362B", "31C7128D8ECF", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T14:30:00+0300")), $mkdate($parse("2021-03-15T14:30:00+0300"))),
       ("D2CB123515AD", "A28A6D69362B", "06AB427792E3", "D8A35114835B",
        $mkdtime($parse("2021-03-15T10:00:00+0300")), $mkdate($parse("2021-03-15T10:00:00+0300"))),
       ("FAA4C26DD42B", "A28A6D69362B", "06AB427792E3", "D8A35114835B",
        $mkdtime($parse("2021-03-15T10:30:00+0300")), $mkdate($parse("2021-03-15T10:30:00+0300"))),
       ("42367BEF02E2", "A28A6D69362B", "06AB427792E3", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T14:00:00+0300")), $mkdate($parse("2021-03-14T14:00:00+0300"))),
       ("D0967F4D648E", "A28A6D69362B", "06AB427792E3", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T14:30:00+0300")), $mkdate($parse("2021-03-14T14:30:00+0300"))),
       ("952F37C2F14A", "C114F6DCBF50", "7C22DD2DAE6D", "D8A35114835B",
        $mkdtime($parse("2021-03-14T14:00:00+0300")), $mkdate($parse("2021-03-14T14:00:00+0300"))),
       ("B237B9259B93", "C114F6DCBF50", "7C22DD2DAE6D", "D8A35114835B",
        $mkdtime($parse("2021-03-14T14:30:00+0300")), $mkdate($parse("2021-03-14T14:30:00+0300"))),
       ("B9991395D6A0", "C114F6DCBF50", "7C22DD2DAE6D", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T10:00:00+0300")), $mkdate($parse("2021-03-15T10:00:00+0300"))),
       ("4831B239BBF0", "C114F6DCBF50", "7C22DD2DAE6D", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T10:30:00+0300")), $mkdate($parse("2021-03-15T10:30:00+0300"))),
       ("88C36803ED04", "C114F6DCBF50", "3A2B57AEBC01", "D8A35114835B",
        $mkdtime($parse("2021-03-15T14:00:00+0300")), $mkdate($parse("2021-03-15T14:00:00+0300"))),
       ("095179BD6D5A", "C114F6DCBF50", "3A2B57AEBC01", "D8A35114835B",
        $mkdtime($parse("2021-03-15T14:30:00+0300")), $mkdate($parse("2021-03-15T14:30:00+0300"))),
       ("6B756E269650", "C114F6DCBF50", "3A2B57AEBC01", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T10:00:00+0300")), $mkdate($parse("2021-03-14T10:00:00+0300"))),
       ("CC862BDA73B8", "C114F6DCBF50", "3A2B57AEBC01", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T10:30:00+0300")), $mkdate($parse("2021-03-14T10:30:00+0300"))),
       ("BFDF14A1A549", "27841926AAE0", "8D958E264C24", "D8A35114835B",
        $mkdtime($parse("2021-03-14T10:00:00+0300")), $mkdate($parse("2021-03-14T10:00:00+0300"))),
       ("813D31766F87", "27841926AAE0", "8D958E264C24", "D8A35114835B",
        $mkdtime($parse("2021-03-14T10:30:00+0300")), $mkdate($parse("2021-03-14T10:30:00+0300"))),
       ("4B67622E59E2", "27841926AAE0", "8D958E264C24", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T14:00:00+0300")), $mkdate($parse("2021-03-15T14:00:00+0300"))),
       ("E7DEC529E0DB", "27841926AAE0", "8D958E264C24", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T14:30:00+0300")), $mkdate($parse("2021-03-15T14:30:00+0300"))),
       ("F85E625B81E8", "27841926AAE0", "AB51389DBD97", "D8A35114835B",
        $mkdtime($parse("2021-03-15T14:00:00+0300")), $mkdate($parse("2021-03-15T14:00:00+0300"))),
       ("A08A07ECA095", "27841926AAE0", "AB51389DBD97", "D8A35114835B",
        $mkdtime($parse("2021-03-15T14:30:00+0300")), $mkdate($parse("2021-03-15T14:30:00+0300"))),
       ("95C5BD59342A", "27841926AAE0", "AB51389DBD97", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T10:00:00+0300")), $mkdate($parse("2021-03-14T10:00:00+0300"))),
       ("1E4E2284AFB9", "27841926AAE0", "AB51389DBD97", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T10:30:00+0300")), $mkdate($parse("2021-03-14T10:30:00+0300"))),
       ("178C38EE4363", "3C36FBC3A5E5", "E4FE7F61E3CD", "D8A35114835B",
        $mkdtime($parse("2021-03-14T10:00:00+0300")), $mkdate($parse("2021-03-14T10:00:00+0300"))),
       ("FE1B50445689", "3C36FBC3A5E5", "E4FE7F61E3CD", "D8A35114835B",
        $mkdtime($parse("2021-03-14T10:30:00+0300")), $mkdate($parse("2021-03-14T10:30:00+0300"))),
       ("136058421FDB", "3C36FBC3A5E5", "E4FE7F61E3CD", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T14:00:00+0300")), $mkdate($parse("2021-03-15T14:00:00+0300"))),
       ("9D5A78B04AA4", "3C36FBC3A5E5", "E4FE7F61E3CD", "99989B8F9F1C",
        $mkdtime($parse("2021-03-15T14:30:00+0300")), $mkdate($parse("2021-03-15T14:30:00+0300"))),
       ("2C0A4F095A37", "3C36FBC3A5E5", "1E7FB6C1B1EB", "D8A35114835B",
        $mkdtime($parse("2021-03-15T14:00:00+0300")), $mkdate($parse("2021-03-15T14:00:00+0300"))),
       ("D9F49E6DA8B8", "3C36FBC3A5E5", "1E7FB6C1B1EB", "D8A35114835B",
        $mkdtime($parse("2021-03-15T14:30:00+0300")), $mkdate($parse("2021-03-15T14:30:00+0300"))),
       ("C0F19A32270A", "3C36FBC3A5E5", "1E7FB6C1B1EB", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T10:00:00+0300")), $mkdate($parse("2021-03-14T10:00:00+0300"))),
       ("F924281985D7", "3C36FBC3A5E5", "1E7FB6C1B1EB", "99989B8F9F1C",
        $mkdtime($parse("2021-03-14T10:30:00+0300")), $mkdate($parse("2021-03-14T10:30:00+0300")));
COMMIT;
