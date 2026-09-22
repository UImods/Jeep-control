.class public final Lcom/ludo/jeepcontrols/FobBackgroundController;
.super Ljava/lang/Object;
.source "FobBackgroundController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;
    }
.end annotation


# static fields
.field private static final BT_CONNECT:Ljava/lang/String; = "android.permission.BLUETOOTH_CONNECT"

.field private static final FOB_READ_TIMEOUT_MS:J = 0x1964L

.field private static final SPP_UUID:Ljava/util/UUID;


# instance fields
.field private final context:Landroid/content/Context;

.field private final fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

.field private gearDiagSliceCount:I

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private final prefs:Landroid/content/SharedPreferences;

.field private volatile running:Z

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field private worker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/ludo/jeepcontrols/FobBackgroundController;->SPP_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    invoke-direct {v0}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;-><init>()V

    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->context:Landroid/content/Context;

    .line 41
    iget-object p1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->context:Landroid/content/Context;

    const-string v0, "jeep_controls_vehicle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "doors"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    invoke-virtual {v0, p1}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->seed(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "obd_fob_baseline_established"

    iget-object v1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    invoke-virtual {v1}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->isBaselineEstablished()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->running:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/ludo/jeepcontrols/FobBackgroundController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->runGearDiagnosticSlice()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ludo/jeepcontrols/FobBackgroundController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ludo/jeepcontrols/FobBackgroundController;Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/ludo/jeepcontrols/FobBackgroundController;->storeError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ludo/jeepcontrols/FobBackgroundController;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->closeTransport()V

    return-void
.end method

.method static synthetic access$200(Lcom/ludo/jeepcontrols/FobBackgroundController;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->hasBluetoothPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/ludo/jeepcontrols/FobBackgroundController;ZLjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->setConnected(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(J)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/ludo/jeepcontrols/FobBackgroundController;->sleepQuiet(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/ludo/jeepcontrols/FobBackgroundController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->connectTransport()V

    return-void
.end method

.method static synthetic access$600(Lcom/ludo/jeepcontrols/FobBackgroundController;)Lcom/ludo/jeepcontrols/RfhBaselineTracker;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ludo/jeepcontrols/FobBackgroundController;)Landroid/content/SharedPreferences;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ludo/jeepcontrols/FobBackgroundController;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ludo/jeepcontrols/FobBackgroundController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->readAndApplyFob()V

    return-void
.end method

.method private static candidateGearLabel(I)Ljava/lang/String;
    .locals 1

    .line 241
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const-string p0, "P"

    return-object p0

    .line 242
    :cond_0
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    const-string p0, "R"

    return-object p0

    .line 243
    :cond_1
    if-nez p0, :cond_2

    const-string p0, "N"

    return-object p0

    .line 244
    :cond_2
    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    const/16 v0, 0xa

    if-gt p0, v0, :cond_3

    const-string p0, "D"

    return-object p0

    .line 245
    :cond_3
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private declared-synchronized closeTransport()V
    .locals 1

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 272
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 273
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 274
    :cond_2
    :goto_2
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->output:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 275
    monitor-exit p0

    return-void

    .line 270
    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method private configureRfh()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    const-string v0, "ATFCSH740"

    const-wide/16 v1, 0x384

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 154
    const-string v0, "ATFCSD300000"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 155
    const-string v0, "ATFCSM1"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 156
    const-string v0, "ATAT0"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 157
    const-string v0, "ATSTFF"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 158
    const-string v0, "ATSH740"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 159
    const-string v0, "ATCRA4C0"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 160
    return-void
.end method

.method private configureTcm()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    const-string v0, "ATFCSM0"

    const-wide/16 v1, 0x384

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 146
    const-string v0, "ATAT0"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 147
    const-string v0, "ATSTFF"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 148
    const-string v0, "ATSH7E1"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 149
    const-string v0, "ATCRA7E9"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 150
    return-void
.end method

.method private connectTransport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 121
    nop

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 124
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OBDLINK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 129
    sget-object v0, Lcom/ludo/jeepcontrols/FobBackgroundController;->SPP_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 130
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 131
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    .line 132
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->output:Ljava/io/OutputStream;

    .line 133
    const-string v0, "ATZ"

    const-wide/16 v1, 0xdac

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 134
    const-string v0, "ATE0"

    const-wide/16 v1, 0x4b0

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 135
    const-string v0, "ATL0"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 136
    const-string v0, "ATS0"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 137
    const-string v0, "ATH1"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 138
    const-string v0, "ATCAF1"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 139
    const-string v0, "ATCFC1"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 140
    const-string v0, "ATSP6"

    const-wide/16 v3, 0x640

    invoke-direct {p0, v0, v3, v4}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    .line 141
    const-string v0, "ATAL"

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->configureRfh()V

    .line 142
    return-void

    .line 128
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Paired OBDLink MX+ not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bluetooth disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bluetooth unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasBluetoothPermission()Z
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->context:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readAndApplyFob()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    .line 218
    const-string v0, "22A00D"

    const-wide/16 v1, 0x1964

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 219
    const v1, 0xa00d

    const-string v2, "4C0"

    invoke-static {v0, v1, v2}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->reassembleDid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "obd_fob_read_count"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    .line 221
    iget-object v4, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 222
    const-string v5, "obd_fob_raw_a00d"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    const-string v4, "obd_fob_last_payload"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    const-string v4, "obd_fob_last_read_ms"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "obd_fob_read_count"

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->isBaselineEstablished()Z

    move-result v0

    .line 227
    iget-object v4, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    invoke-virtual {v4, v1}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->accept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->isBaselineEstablished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "obd_fob_baseline_established"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->fobTracker:Lcom/ludo/jeepcontrols/RfhBaselineTracker;

    invoke-virtual {v0}, Lcom/ludo/jeepcontrols/RfhBaselineTracker;->isBaselineEstablished()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v4, "RF Hub baseline unavailable"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    const-string v4, "obd_fob_last_event"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    const-string v4, "obd_fob_last_event_ms"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ludo/jeepcontrols/DoorStateSync;->applyPhysicalFob(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    :cond_2
    return-void
.end method

.method private readAndStoreGear0510()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    .line 188
    const-string v0, "220510"

    const-wide/16 v1, 0x5dc

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 189
    const/16 v1, 0x510

    const-string v2, "7E9"

    invoke-static {v0, v1, v2}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->reassembleDid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->extractGear0510(Ljava/lang/String;)I

    move-result v2

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 192
    iget-object v5, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "obd_gear_0510_read_count"

    const-wide/16 v8, 0x0

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 193
    const-string v6, "obd_gear_validation_only"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 194
    const-string v6, "obd_gear_raw_0510"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    const-string v5, "obd_gear_payload_0510"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    const-string v1, "obd_gear_0510_timestamp_ms"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "obd_gear_0510_read_count"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    if-ltz v2, :cond_0

    .line 198
    const-string v1, "obd_live_gear_0510"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 199
    invoke-static {v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->candidateGearLabel(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "obd_gear_candidate_label"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/ludo/jeepcontrols/GearStateSync;->apply(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-void
.end method

.method private readAndStoreGear0516()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    .line 206
    const-string v0, "220516"

    const-wide/16 v1, 0x5dc

    invoke-direct {p0, v0, v1, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController;->send(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 207
    const/16 v1, 0x516

    const-string v2, "7E9"

    invoke-static {v0, v1, v2}, Lcom/ludo/jeepcontrols/ObdReadOnlySignals;->reassembleDid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "obd_gear_0516_read_count"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v3, 0x1

    add-long/2addr v6, v3

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 209
    const-string v3, "obd_gear_validation_only"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 210
    const-string v3, "obd_gear_raw_0516"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    const-string v2, "obd_gear_payload_0516"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "obd_gear_0516_timestamp_ms"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "obd_gear_0516_read_count"

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    return-void
.end method

.method public static requestBluetoothPermission(Landroid/app/Activity;)V
    .locals 3

    .line 45
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    if-nez p0, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x5718

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    :cond_1
    :goto_0
    nop

    .line 51
    return-void
.end method

.method private runGearDiagnosticSlice()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->configureTcm()V

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->tryReadGear0510()V

    iget v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->gearDiagSliceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->gearDiagSliceCount:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->gearDiagSliceCount:I

    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->tryReadGear0516()V

    :cond_0
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->configureRfh()V

    return-void
.end method

.method private static safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 294
    if-nez p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    .line 295
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized send(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->output:Ljava/io/OutputStream;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->output:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 252
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 255
    nop

    .line 256
    :goto_1
    iget-boolean p2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->running:Z

    if-eqz p2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    cmp-long p2, p2, v1

    if-gez p2, :cond_4

    .line 257
    iget-object p2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p2

    if-lez p2, :cond_3

    .line 258
    iget-object p2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->input:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 259
    if-gez p2, :cond_1

    goto :goto_2

    .line 260
    :cond_1
    int-to-char p3, p2

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const/16 p3, 0x3e

    if-ne p2, p3, :cond_2

    const/4 p2, 0x1

    goto :goto_3

    .line 262
    :cond_2
    goto :goto_1

    .line 263
    :cond_3
    const-wide/16 p2, 0xc

    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 266
    :cond_4
    :goto_2
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_5

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 266
    :cond_5
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OBD prompt timeout after "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 249
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "OBD streams unavailable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setConnected(ZLjava/lang/String;)V
    .locals 3

    .line 278
    move v2, p1

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 279
    const-string v1, "obd_connected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 280
    const-string v0, "obd_background_state"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "obd_background_state_ms"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-nez v2, :cond_0

    const-string v0, "obd_gear_session_baselined"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 282
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ludo/jeepcontrols/NotificationHelper;->update(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method private static sleepQuiet(J)V
    .locals 0

    .line 300
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 301
    :goto_0
    return-void
.end method

.method private storeError(Ljava/lang/Throwable;)V
    .locals 3

    .line 286
    invoke-static {p1}, Lcom/ludo/jeepcontrols/FobBackgroundController;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 288
    const-string v1, "obd_background_last_error"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "obd_background_last_error_ms"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 290
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    return-void
.end method

.method private tryReadGear0510()V
    .locals 4

    .line 164
    const-string v0, "obd_gear_last_error_0510"

    :try_start_0
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->readAndStoreGear0510()V

    .line 165
    iget-object v1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    .line 167
    iget-object v2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 168
    invoke-static {v1}, Lcom/ludo/jeepcontrols/FobBackgroundController;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "obd_gear_last_error_0510_ms"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    :goto_0
    return-void
.end method

.method private tryReadGear0516()V
    .locals 4

    .line 176
    const-string v0, "obd_gear_last_error_0516"

    :try_start_0
    invoke-direct {p0}, Lcom/ludo/jeepcontrols/FobBackgroundController;->readAndStoreGear0516()V

    .line 177
    iget-object v1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    .line 179
    iget-object v2, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 180
    invoke-static {v1}, Lcom/ludo/jeepcontrols/FobBackgroundController;->safeMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "obd_gear_last_error_0516_ms"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 3

    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->running:Z

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ludo/jeepcontrols/FobBackgroundController$Worker;-><init>(Lcom/ludo/jeepcontrols/FobBackgroundController;Lcom/ludo/jeepcontrols/FobBackgroundController$1;)V

    const-string v2, "JEEP-FOB-v57175"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->worker:Ljava/lang/Thread;

    .line 57
    iget-object v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->running:Z

    .line 62
    iget-object v1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->worker:Ljava/lang/Thread;

    .line 63
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 65
    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 66
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ludo/jeepcontrols/FobBackgroundController;->worker:Ljava/lang/Thread;

    .line 67
    const-string v1, "STOPPED"

    invoke-direct {p0, v0, v1}, Lcom/ludo/jeepcontrols/FobBackgroundController;->setConnected(ZLjava/lang/String;)V

    .line 68
    return-void
.end method
