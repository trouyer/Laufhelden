# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-laufhelden

include (o2/src/src.pri)

# Define the preprocessor macro to get the application version in our application.
DEFINES += APP_VERSION=\"\\\"$${VERSION}\\\"\"

CONFIG += sailfishapp
QT += positioning location concurrent
QT += bluetooth sensors
QT += dbus

SOURCES += src/harbour-laufhelden.cpp \
    src/trackrecorder.cpp \
    src/historymodel.cpp \
    src/trackloader.cpp \
    src/settings.cpp \
    src/bluetoothconnection.cpp \
    src/bluetoothdata.cpp \
    src/logwriter.cpp \
    src/plotwidget.cpp \
    src/light.cpp \
    src/pebblemanagercomm.cpp \
    src/pebblewatchcomm.cpp

OTHER_FILES += qml/harbour-laufhelden.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-laufhelden.spec \
    rpm/harbour-laufhelden.yaml \
    harbour-laufhelden.desktop \
    qml/pages/RecordPage.qml \
    qml/pages/SaveDialog.qml \
    translations/*.ts \
    qml/pages/DetailedViewPage.qml \
    qml/pages/AboutPage.qml \
    qml/pages/SettingsPage.qml

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

TRANSLATIONS += translations/harbour-laufhelden-de.ts \
                translations/harbour-laufhelden-pl.ts \
                translations/harbour-laufhelden-es.ts \
                translations/harbour-laufhelden-sv.ts \
                translations/harbour-laufhelden-hu.ts \
                translations/harbour-laufhelden-fi_FI.ts \
                translations/harbour-laufhelden-nl.ts \
                translations/harbour-laufhelden-nl_BE.ts \
                translations/harbour-laufhelden-es_ES.ts

HEADERS += \
    src/trackrecorder.h \
    src/historymodel.h \
    src/trackloader.h \
    src/settings.h \
    src/bluetoothconnection.h \
    src/bluetoothdata.h \
    src/logwriter.h \
    src/plotwidget.h \
    src/light.h \
    src/pebblemanagercomm.h \
    src/pebblewatchcomm.h

DISTFILES += \
    qml/pages/MainPage.qml \
    qml/pages/BTConnectPage.qml \
    qml/tools/Messagebox.qml \
    qml/laufhelden.png \
    qml/pages/PreRecordPage.qml \
    qml/workouticons/biking.png \
    qml/workouticons/mountainBiking.png \
    qml/workouticons/running.png \
    qml/workouticons/walking.png \
    qml/tools/ScreenBlank.qml \
    qml/pages/catch-action.wav \
    rpm/harbour-laufhelden.changes \
    qml/pages/ThresholdSettingsPage.qml \
    qml/tools/MediaPlayerControl.qml \
    qml/audio/hlvb.wav \
    qml/img/calendar.png \
    qml/img/bat0.png \
    qml/tools/Thresholds.js \
    qml/tools/JSTools.js \
    qml/tools/SharedResources.js \
    qml/img/bat20.png \
    qml/img/bat50.png \
    qml/img/bat80.png \
    qml/img/bat100.png \
    qml/img/flame.png \
    qml/img/heart.png \
    qml/img/length.png \
    qml/img/mountains.png \
    qml/img/speed.png \
    qml/img/speedavg.png \
    qml/img/time.png \
    qml/img/cd_logo.jpg \
    qml/img/icon-lock-error.png \
    qml/img/icon-lock-info.png \
    qml/img/icon-lock-ok.png \
    qml/img/icon-lock-warning.png \
    qml/audio/hr_toohigh_en_male.wav \
    qml/audio/hr_normal_en_male.wav \
    qml/audio/hr_toolow_en_male.wav \
    qml/audio/pace_toohigh_en_male.wav \
    qml/audio/pace_toolow_en_male.wav \
    qml/audio/pace_normal_en_male.wav \
    qml/audio/hr_normal_de_male.wav \
    qml/audio/hr_toohigh_de_male.wav \
    qml/audio/hr_toolow_de_male.wav \
    qml/audio/pace_normal_de_male.wav \
    qml/audio/pace_toohigh_de_male.wav \
    qml/audio/pace_toolow_de_male.wav \
    qml/pages/SettingsMenu.qml \
    qml/pages/DiagramViewPage.qml \
    qml/tools/RecordPageDisplay.js \
    qml/pages/MapSettingsPage.qml \
    qml/img/map_pause.png \
    qml/img/map_play.png \
    qml/img/map_resume.png \
    qml/img/map_stop.png \
    qml/workouticons/skiing.png \
    qml/tools/SportsTracker.js \
    qml/pages/SportsTrackerUploadPage.qml \
    qml/pages/SportsTrackerSettingsPage.qml \
    qml/pages/PebbleSettingsPage.qml \
    qml/tools/PebbleComm.qml \
    qml/pages/StravaActivityPage.qml \
    qml/units/minkm_de_male.wav \
    qml/units/minmi_de_male.wav \
    qml/units/mih_de_male.wav \
    qml/units/feet_de_male.wav \
    qml/units/mi_de_male.wav \
    qml/units/m_de_male.wav \
    qml/units/km_de_male.wav \
    qml/units/bpm_de_male.wav \
    qml/units/kmh_de_male.wav \
    qml/units/hour_de_male.wav \
    qml/units/minute_de_male.wav \
    qml/units/second_de_male.wav \
    qml/units/hours_de_male.wav \
    qml/units/minutes_de_male.wav \
    qml/units/seconds_de_male.wav \
    qml/headers/altitude_de_male.wav \
    qml/headers/pace_de_male.wav \
    qml/headers/speed_de_male.wav \
    qml/headers/distance_de_male.wav \
    qml/headers/duration_de_male.wav \
    qml/headers/heartrate_de_male.wav \
    qml/img/cover.png \
    qml/img/general.png \
    qml/img/map.png \
    qml/img/pebble.png \
    qml/img/sportstracker.png \
    qml/img/strava.png \
    qml/img/voicecoach.png \
    qml/headers/paceavg_de_male.wav \
    qml/headers/speedavg_de_male.wav \
    qml/headers/heartrateavg_de_male.wav \
    qml/numbers/0_de_male.wav \
    qml/numbers/0_en_male.wav \
    qml/numbers/1_de_male.wav \
    qml/numbers/1e_de_male.wav \
    qml/numbers/1_en_male.wav \
    qml/numbers/1n_de_male.wav \
    qml/numbers/2_de_male.wav \
    qml/numbers/2_en_male.wav \
    qml/numbers/3_de_male.wav \
    qml/numbers/3_en_male.wav \
    qml/numbers/4_de_male.wav \
    qml/numbers/4_en_male.wav \
    qml/numbers/5_de_male.wav \
    qml/numbers/5_en_male.wav \
    qml/numbers/6_de_male.wav \
    qml/numbers/6_en_male.wav \
    qml/numbers/7_de_male.wav \
    qml/numbers/7_en_male.wav \
    qml/numbers/8_de_male.wav \
    qml/numbers/8_en_male.wav \
    qml/numbers/9_de_male.wav \
    qml/numbers/9_en_male.wav \
    qml/numbers/10_de_male.wav \
    qml/numbers/10_en_male.wav \
    qml/numbers/11_de_male.wav \
    qml/numbers/11_en_male.wav \
    qml/numbers/12_de_male.wav \
    qml/numbers/12_en_male.wav \
    qml/numbers/13_de_male.wav \
    qml/numbers/13_en_male.wav \
    qml/numbers/14_de_male.wav \
    qml/numbers/14_en_male.wav \
    qml/numbers/15_de_male.wav \
    qml/numbers/15_en_male.wav \
    qml/numbers/16_de_male.wav \
    qml/numbers/16_en_male.wav \
    qml/numbers/17_de_male.wav \
    qml/numbers/17_en_male.wav \
    qml/numbers/18_de_male.wav \
    qml/numbers/18_en_male.wav \
    qml/numbers/19_de_male.wav \
    qml/numbers/19_en_male.wav \
    qml/numbers/20_de_male.wav \
    qml/numbers/20_en_male.wav \
    qml/numbers/21_de_male.wav \
    qml/numbers/21_en_male.wav \
    qml/numbers/22_de_male.wav \
    qml/numbers/22_en_male.wav \
    qml/numbers/23_de_male.wav \
    qml/numbers/23_en_male.wav \
    qml/numbers/24_de_male.wav \
    qml/numbers/24_en_male.wav \
    qml/numbers/25_de_male.wav \
    qml/numbers/25_en_male.wav \
    qml/numbers/26_de_male.wav \
    qml/numbers/26_en_male.wav \
    qml/numbers/27_de_male.wav \
    qml/numbers/27_en_male.wav \
    qml/numbers/28_de_male.wav \
    qml/numbers/28_en_male.wav \
    qml/numbers/29_de_male.wav \
    qml/numbers/29_en_male.wav \
    qml/numbers/30_de_male.wav \
    qml/numbers/30_en_male.wav \
    qml/numbers/31_de_male.wav \
    qml/numbers/31_en_male.wav \
    qml/numbers/32_de_male.wav \
    qml/numbers/32_en_male.wav \
    qml/numbers/33_de_male.wav \
    qml/numbers/33_en_male.wav \
    qml/numbers/34_de_male.wav \
    qml/numbers/34_en_male.wav \
    qml/numbers/35_de_male.wav \
    qml/numbers/35_en_male.wav \
    qml/numbers/36_de_male.wav \
    qml/numbers/36_en_male.wav \
    qml/numbers/37_de_male.wav \
    qml/numbers/37_en_male.wav \
    qml/numbers/38_de_male.wav \
    qml/numbers/38_en_male.wav \
    qml/numbers/39_de_male.wav \
    qml/numbers/39_en_male.wav \
    qml/numbers/40_de_male.wav \
    qml/numbers/40_en_male.wav \
    qml/numbers/41_de_male.wav \
    qml/numbers/41_en_male.wav \
    qml/numbers/42_de_male.wav \
    qml/numbers/42_en_male.wav \
    qml/numbers/43_de_male.wav \
    qml/numbers/43_en_male.wav \
    qml/numbers/44_de_male.wav \
    qml/numbers/44_en_male.wav \
    qml/numbers/45_de_male.wav \
    qml/numbers/45_en_male.wav \
    qml/numbers/46_de_male.wav \
    qml/numbers/46_en_male.wav \
    qml/numbers/47_de_male.wav \
    qml/numbers/47_en_male.wav \
    qml/numbers/48_de_male.wav \
    qml/numbers/48_en_male.wav \
    qml/numbers/49_de_male.wav \
    qml/numbers/49_en_male.wav \
    qml/numbers/50_de_male.wav \
    qml/numbers/50_en_male.wav \
    qml/numbers/51_de_male.wav \
    qml/numbers/51_en_male.wav \
    qml/numbers/52_de_male.wav \
    qml/numbers/52_en_male.wav \
    qml/numbers/53_de_male.wav \
    qml/numbers/53_en_male.wav \
    qml/numbers/54_de_male.wav \
    qml/numbers/54_en_male.wav \
    qml/numbers/55_de_male.wav \
    qml/numbers/55_en_male.wav \
    qml/numbers/56_de_male.wav \
    qml/numbers/56_en_male.wav \
    qml/numbers/57_de_male.wav \
    qml/numbers/57_en_male.wav \
    qml/numbers/58_de_male.wav \
    qml/numbers/58_en_male.wav \
    qml/numbers/59_de_male.wav \
    qml/numbers/59_en_male.wav \
    qml/numbers/60_de_male.wav \
    qml/numbers/60_en_male.wav \
    qml/numbers/61_de_male.wav \
    qml/numbers/61_en_male.wav \
    qml/numbers/62_de_male.wav \
    qml/numbers/62_en_male.wav \
    qml/numbers/63_de_male.wav \
    qml/numbers/63_en_male.wav \
    qml/numbers/64_de_male.wav \
    qml/numbers/64_en_male.wav \
    qml/numbers/65_de_male.wav \
    qml/numbers/65_en_male.wav \
    qml/numbers/66_de_male.wav \
    qml/numbers/66_en_male.wav \
    qml/numbers/67_de_male.wav \
    qml/numbers/67_en_male.wav \
    qml/numbers/68_de_male.wav \
    qml/numbers/68_en_male.wav \
    qml/numbers/69_de_male.wav \
    qml/numbers/69_en_male.wav \
    qml/numbers/70_de_male.wav \
    qml/numbers/70_en_male.wav \
    qml/numbers/71_de_male.wav \
    qml/numbers/71_en_male.wav \
    qml/numbers/72_de_male.wav \
    qml/numbers/72_en_male.wav \
    qml/numbers/73_de_male.wav \
    qml/numbers/73_en_male.wav \
    qml/numbers/74_de_male.wav \
    qml/numbers/74_en_male.wav \
    qml/numbers/75_de_male.wav \
    qml/numbers/75_en_male.wav \
    qml/numbers/76_de_male.wav \
    qml/numbers/76_en_male.wav \
    qml/numbers/77_de_male.wav \
    qml/numbers/77_en_male.wav \
    qml/numbers/78_de_male.wav \
    qml/numbers/78_en_male.wav \
    qml/numbers/79_de_male.wav \
    qml/numbers/79_en_male.wav \
    qml/numbers/80_de_male.wav \
    qml/numbers/80_en_male.wav \
    qml/numbers/81_de_male.wav \
    qml/numbers/81_en_male.wav \
    qml/numbers/82_de_male.wav \
    qml/numbers/82_en_male.wav \
    qml/numbers/83_de_male.wav \
    qml/numbers/83_en_male.wav \
    qml/numbers/84_de_male.wav \
    qml/numbers/84_en_male.wav \
    qml/numbers/85_de_male.wav \
    qml/numbers/85_en_male.wav \
    qml/numbers/86_de_male.wav \
    qml/numbers/86_en_male.wav \
    qml/numbers/87_de_male.wav \
    qml/numbers/87_en_male.wav \
    qml/numbers/88_de_male.wav \
    qml/numbers/88_en_male.wav \
    qml/numbers/89_de_male.wav \
    qml/numbers/89_en_male.wav \
    qml/numbers/90_de_male.wav \
    qml/numbers/90_en_male.wav \
    qml/numbers/91_de_male.wav \
    qml/numbers/91_en_male.wav \
    qml/numbers/92_de_male.wav \
    qml/numbers/92_en_male.wav \
    qml/numbers/93_de_male.wav \
    qml/numbers/93_en_male.wav \
    qml/numbers/94_de_male.wav \
    qml/numbers/94_en_male.wav \
    qml/numbers/95_de_male.wav \
    qml/numbers/95_en_male.wav \
    qml/numbers/96_de_male.wav \
    qml/numbers/96_en_male.wav \
    qml/numbers/97_de_male.wav \
    qml/numbers/97_en_male.wav \
    qml/numbers/98_de_male.wav \
    qml/numbers/98_en_male.wav \
    qml/numbers/99_de_male.wav \
    qml/numbers/99_en_male.wav \
    qml/numbers/100_de_male.wav \
    qml/numbers/100_en_male.wav \
    qml/numbers/200_de_male.wav \
    qml/numbers/200_en_male.wav \
    qml/numbers/300_de_male.wav \
    qml/numbers/300_en_male.wav \
    qml/numbers/400_de_male.wav \
    qml/numbers/400_en_male.wav \
    qml/numbers/500_de_male.wav \
    qml/numbers/500_en_male.wav \
    qml/numbers/600_de_male.wav \
    qml/numbers/600_en_male.wav \
    qml/numbers/700_de_male.wav \
    qml/numbers/700_en_male.wav \
    qml/numbers/800_de_male.wav \
    qml/numbers/800_en_male.wav \
    qml/numbers/900_de_male.wav \
    qml/numbers/900_en_male.wav \
    qml/numbers/dot_0_de_male.wav \
    qml/numbers/dot_0_en_male.wav \
    qml/numbers/dot_1_de_male.wav \
    qml/numbers/dot_1_en_male.wav \
    qml/numbers/dot_2_de_male.wav \
    qml/numbers/dot_2_en_male.wav \
    qml/numbers/dot_3_de_male.wav \
    qml/numbers/dot_3_en_male.wav \
    qml/numbers/dot_4_de_male.wav \
    qml/numbers/dot_4_en_male.wav \
    qml/numbers/dot_5_de_male.wav \
    qml/numbers/dot_5_en_male.wav \
    qml/numbers/dot_6_de_male.wav \
    qml/numbers/dot_6_en_male.wav \
    qml/numbers/dot_7_de_male.wav \
    qml/numbers/dot_7_en_male.wav \
    qml/numbers/dot_8_de_male.wav \
    qml/numbers/dot_8_en_male.wav \
    qml/numbers/dot_9_de_male.wav \
    qml/numbers/dot_9_en_male.wav \
    qml/headers/altitude_de_male.wav \
    qml/headers/distance_de_male.wav \
    qml/headers/duration_de_male.wav \
    qml/headers/heartrateavg_de_male.wav \
    qml/headers/heartrate_de_male.wav \
    qml/headers/paceavg_de_male.wav \
    qml/headers/pace_de_male.wav \
    qml/headers/speedavg_de_male.wav \
    qml/headers/speed_de_male.wav \
    qml/units/bpm_de_male.wav \
    qml/units/feet_de_male.wav \
    qml/units/hour_de_male.wav \
    qml/units/hours_de_male.wav \
    qml/units/km_de_male.wav \
    qml/units/kmh_de_male.wav \
    qml/units/m_de_male.wav \
    qml/units/mi_de_male.wav \
    qml/units/mih_de_male.wav \
    qml/units/minkm_de_male.wav \
    qml/units/minmi_de_male.wav \
    qml/units/minute_de_male.wav \
    qml/units/minutes_de_male.wav \
    qml/units/second_de_male.wav \
    qml/units/seconds_de_male.wav

