--------------------------------------------------------------------------------------
-- Option for OEBB-Signals (by Schuster)
--
-- Optionen für Austria  OEBB Signale (von Schuster)
--------------------------------------------------------------------------------------
-- Schuster 25.01.2019
--------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------
-- If gDebug contains any existing signal Id, set DEBUG = true for this signal
-- If more than one signal Id is given, separate every signal Id with a semicolon.
--
-- Debugausgabe in LogMate, wenn die Signal-Id hier eingetragen wird
-- Mehrere Signal-Ids werden durch ein Semikolon voneinander getrennt!
-- Bei Triggern wird vor dem kompletten (!) Wert aus den Id-Feldern ein "T" vorangestellt
-- Beispiel: gDebug = "012;W3;57P21;A;T035"
-- Wird gDebug = "Position" angegeben, werden alle Signale etc. in LogMate gelistet
-- Wird gDebug = "AutoDebug" angegeben, werden alle Debugmeldungen zwischengespeichert
--               und bei TAB-Anforderung vor dem Signal, in LogMate ausgegeben
--------------------------------------------------------------------------------------

	gDebug = ""

--------------------------------------------------------------------------------------
-- Set the earliest switching point after link 0 in meters (value range: 0 ... 20)
--
-- Hiermit wird der Schaltpunkt, wann das Signal beim Passieren vom Link 0 auf Hp0 schaltet,
-- in Fahrtrichtung nach hinten verschoben
-- Setze den frühesten Schaltpunkt nach dem Link 0 in Metern (Wertebereich 0 ... 20)
--------------------------------------------------------------------------------------

	gOptionDistHp0 = 8

--------------------------------------------------------------------------------------
-- Parameter to control the behavior when crossing link 0 forward
-- Switch to Hp0:
-- 0 = at begin crossing (default)
-- 1 = by end of train
-- 2 = after x seconds
-- 3 = after x seconds or at latest by end of train
-- 4 = after end of train plus x seconds
-- The value of seconds set always with gOptionDelayEOTHp0
--
-- Option steuert das Verhalten des Signals, wenn der Link 0 vorwärts befahren wird
-- Signal schaltet in Haltstellung:
-- 0 = mit dem Zuganfang (Standard)
-- 1 = mit dem Zugende
-- 2 = nach x Sekunden
-- 3 = nach x Sekunden oder spätestens mit dem Zugende
-- 4 = x Sekunden nach dem Zugende
-- Die Anzahl der Sekunden wird immer mit der Option gOptionDelayEOTHp0 gesetzt
--------------------------------------------------------------------------------------

	gOptionEOTHp0 = 3

--------------------------------------------------------------------------------------
-- Set time for delay if gOptionEOTHp0 = 2, 3 or 4
-- Choose any value but no longer as 20 seconds
-- For all others you can leave it as it is
--
-- Zeitverzögerung für die Einstellungen gOptionEOTHp0 = 2, 3 oder 4
-- Wähle beliebigen Wert jedoch nicht mehr wie 20 Sekunden
-- Für alle anderen Einstellungen kann der Wert einen beliebigen Zahlenwert enthalten
--------------------------------------------------------------------------------------

	gOptionDelayEOTHp0 = 5

--------------------------------------------------------------------------------------
-- Set time in seconds for delay Hp1 / Hp2 if consist just finished crossing link 0
-- backwards (value range: 0 .. 30)
--
-- Zeitverzögerung in Sekunden nach dem Passieren des Link 0 für die Fahrtstellung
-- der Signale in Gegenrichtung bei Rückwärtsfahrt (Wertebereich 0 .. 30)
--------------------------------------------------------------------------------------

	gOptionDelayBackws = 5

--------------------------------------------------------------------------------------
-- Parameter to control the behavior of Shunt- and Substitution Signal
-- If walue is equal to zero, you must use the TAB-Key every time for Shunt- and Substitution Signal
-- If walue is greater then 0, there is no need to apply the TAB-Key for Shunt- and Substitution Signal
-- The walue is the distance between consist and signal for automatic Sh1 / Zs1 activation (value range: 0 ... 200)
--
-- Option steuert das Verhalten vom Rangier- und Ersatzsignal
-- Ist der Wert gleich 0, dann muss die TAB-Taste gedrückt werden, um Rangier- bzw Ersatzsignal zu aktivieren
-- Ist der Wert größer als 0, ist es nicht nötig, die TAB-Taste für Rangier- bzw Ersatzsignal zu betätigen
-- Der Wert entspricht der Entfernung in Metern, wann der Zug vor dem Signal automatisch das Sh1 oder Zs1 schaltet
-- (Wertebereich: 0 ... 200)
--------------------------------------------------------------------------------------

	gOptionSh1Dist = 0

--------------------------------------------------------------------------------------
-- Set a random probability for a signal disturbance. (value range: 1 ... 5 ... 1000)
--
-- Setze eine zufallswahrscheinlichkeit für eine Signalstörung
-- Der Wert wird in %o angegeben, also 1 von 1000 (Wertebereich 1 ... 5 ... 1000)
-- Der Wert 0 deaktiviert Signalstörungen. Standardwert ist 5
--------------------------------------------------------------------------------------

	gRandomBug = 5

--------------------------------------------------------------------------------------
-- If true, setup the 2DMap to 2DMapPro
--
-- Die Standardeinstellung entspricht:   false
-- Wird der Wert auf:   true   gesetzt, so wird auf der 2DMap die Signal-ID angezeigt
-- Des weiteren werden spezielle Symbole (soweit vorhanden) für die Signale angezeigt
--------------------------------------------------------------------------------------

	g2DMapPro = false

--------------------------------------------------------------------------------------
