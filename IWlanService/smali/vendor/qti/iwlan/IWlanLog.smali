.class public Lvendor/qti/iwlan/IWlanLog;
.super Ljava/lang/Object;
.source "IWlanLog.java"


# static fields
.field private static DBG_PROPERTY:Z

.field private static MAX_BUFFER_SIZE:I


# instance fields
.field public dataLogBuffer:Lvendor/qti/iwlan/LogBuffer;

.field public networkLogBuffer:Lvendor/qti/iwlan/LogBuffer;

.field public qnpLogBuffer:Lvendor/qti/iwlan/LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-string v0, "persist.vendor.iwlan.logging.logcat"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lvendor/qti/iwlan/IWlanLog;->DBG_PROPERTY:Z

    .line 15
    const/16 v0, 0xc8

    sput v0, Lvendor/qti/iwlan/IWlanLog;->MAX_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lvendor/qti/iwlan/LogBuffer;

    sget v1, Lvendor/qti/iwlan/IWlanLog;->MAX_BUFFER_SIZE:I

    invoke-direct {v0, v1}, Lvendor/qti/iwlan/LogBuffer;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanLog;->dataLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    .line 23
    new-instance v0, Lvendor/qti/iwlan/LogBuffer;

    sget v1, Lvendor/qti/iwlan/IWlanLog;->MAX_BUFFER_SIZE:I

    invoke-direct {v0, v1}, Lvendor/qti/iwlan/LogBuffer;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanLog;->networkLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    .line 24
    new-instance v0, Lvendor/qti/iwlan/LogBuffer;

    sget v1, Lvendor/qti/iwlan/IWlanLog;->MAX_BUFFER_SIZE:I

    invoke-direct {v0, v1}, Lvendor/qti/iwlan/LogBuffer;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanLog;->qnpLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    .line 25
    return-void
.end method

.method private addToBuffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x571bc0ec

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x5518f900

    if-eq v0, v1, :cond_2

    const v1, 0x645ebb32

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "IWlanNetworkService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "IWlanDataService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "QualifiedNetworksServiceImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    .line 62
    :cond_4
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanLog;->qnpLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    invoke-virtual {v0, p2}, Lvendor/qti/iwlan/LogBuffer;->addLog(Ljava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_5
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanLog;->networkLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    invoke-virtual {v0, p2}, Lvendor/qti/iwlan/LogBuffer;->addLog(Ljava/lang/String;)V

    .line 60
    goto :goto_2

    .line 56
    :cond_6
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanLog;->dataLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    invoke-virtual {v0, p2}, Lvendor/qti/iwlan/LogBuffer;->addLog(Ljava/lang/String;)V

    .line 57
    nop

    .line 65
    :goto_2
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 34
    sget-boolean v0, Lvendor/qti/iwlan/IWlanLog;->DBG_PROPERTY:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanLog;->addToBuffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 49
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanLog;->addToBuffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 39
    sget-boolean v0, Lvendor/qti/iwlan/IWlanLog;->DBG_PROPERTY:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanLog;->addToBuffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 29
    sget-boolean v0, Lvendor/qti/iwlan/IWlanLog;->DBG_PROPERTY:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanLog;->addToBuffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 44
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanLog;->addToBuffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
