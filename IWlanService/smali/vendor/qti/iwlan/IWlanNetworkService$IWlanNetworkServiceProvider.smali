.class Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;
.super Landroid/telephony/NetworkService$NetworkServiceProvider;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/iwlan/IWlanNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWlanNetworkServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/Message;",
            "Landroid/telephony/NetworkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final proxy:Lvendor/qti/iwlan/IWlanProxy;

.field final synthetic this$0:Lvendor/qti/iwlan/IWlanNetworkService;


# direct methods
.method constructor <init>(Lvendor/qti/iwlan/IWlanNetworkService;I)V
    .locals 3
    .param p2, "slotIndex"    # I

    .line 69
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->this$0:Lvendor/qti/iwlan/IWlanNetworkService;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/telephony/NetworkService$NetworkServiceProvider;-><init>(Landroid/telephony/NetworkService;I)V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    invoke-virtual {p1}, Lvendor/qti/iwlan/IWlanNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->getSlotIndex()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->getInstanceBySlotId(Landroid/content/Context;I)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lvendor/qti/iwlan/IWlanNetworkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    .line 77
    new-instance v1, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;

    iget-object v2, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, p1}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;-><init>(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;Landroid/os/Looper;Lvendor/qti/iwlan/IWlanNetworkService;)V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    .line 113
    iget-object p1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lvendor/qti/iwlan/IWlanProxy;->registerForDataRegistrationStateChanged(Landroid/os/Handler;I)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    .line 59
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;
    .param p1, "x1"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;

    .line 59
    invoke-direct {p0, p1}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->getRegistrationStateFromResult(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;)Lvendor/qti/iwlan/IWlanProxy;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    .line 59
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    return-object v0
.end method

.method private getAvailableServices(IZ)Ljava/util/List;
    .locals 2
    .param p1, "regState"    # I
    .param p2, "emergencyOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x5

    if-eqz p2, :cond_0

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_0
    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 167
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getRegStateFromHalRegState(I)I
    .locals 4
    .param p1, "halRegState"    # I

    .line 117
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_0
    return v3

    .line 131
    :cond_1
    :pswitch_0
    return v2

    .line 128
    :cond_2
    :pswitch_1
    return v1

    .line 125
    :cond_3
    :pswitch_2
    return v0

    .line 122
    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRegistrationStateFromResult(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)Landroid/telephony/NetworkRegistrationInfo;
    .locals 6
    .param p1, "result"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;

    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    iget v0, p1, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;->regState:I

    invoke-direct {p0, v0}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->isEmergencyOnly(I)Z

    move-result v0

    .line 179
    .local v0, "emergencyOnly":Z
    iget v1, p1, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;->regState:I

    invoke-direct {p0, v1, v0}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->getAvailableServices(IZ)Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v2, p1, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;->regState:I

    invoke-direct {p0, v2}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->getRegStateFromHalRegState(I)I

    move-result v2

    .line 181
    .local v2, "regState":I
    const/16 v3, 0x12

    .line 183
    .local v3, "accessNetworkTechnology":I
    new-instance v4, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 184
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRegistrationState(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 187
    invoke-virtual {v4, v3}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAccessNetworkTechnology(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    iget v5, p1, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;->reasonForDenial:I

    .line 188
    invoke-virtual {v4, v5}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setRejectCause(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 189
    invoke-virtual {v4, v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setEmergencyOnly(Z)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 190
    invoke-virtual {v4, v1}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setAvailableServices(Ljava/util/List;)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 193
    .local v4, "netRegState":Landroid/telephony/NetworkRegistrationInfo;
    return-object v4
.end method

.method private isEmergencyOnly(I)Z
    .locals 1
    .param p1, "halRegState"    # I

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 153
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 145
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 219
    sget-object v0, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    const-string v1, "IWlanNetworkService Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->unregisterForDataRegistrationStateChanged(Landroid/os/Handler;)V

    .line 221
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-static {v0}, Lvendor/qti/iwlan/IWlanProxy;->disableIWlan(Lvendor/qti/iwlan/IWlanProxy;)V

    .line 222
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 225
    const-string v0, "IWlanNetworkServiceProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanLog;->networkLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    invoke-virtual {v0, p1}, Lvendor/qti/iwlan/LogBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 227
    return-void
.end method

.method public requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V
    .locals 4
    .param p1, "domain"    # I
    .param p2, "callback"    # Landroid/telephony/NetworkServiceCallback;

    .line 199
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkRegistrationInfo for domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 203
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V

    goto :goto_0

    .line 208
    :cond_0
    if-eqz p2, :cond_1

    .line 209
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v1, v0}, Lvendor/qti/iwlan/IWlanProxy;->getDataRegistrationState(Landroid/os/Message;)V

    .line 215
    :goto_0
    return-void
.end method
