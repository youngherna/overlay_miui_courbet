.class Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;
.super Landroid/telephony/data/DataService$DataServiceProvider;
.source "IWlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/iwlan/IWlanDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IWlanDataServiceProvider"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/Message;",
            "Landroid/telephony/data/DataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final proxy:Lvendor/qti/iwlan/IWlanProxy;

.field final synthetic this$0:Lvendor/qti/iwlan/IWlanDataService;


# direct methods
.method private constructor <init>(Lvendor/qti/iwlan/IWlanDataService;I)V
    .locals 3
    .param p2, "slotIndex"    # I

    .line 83
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->this$0:Lvendor/qti/iwlan/IWlanDataService;

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/DataService$DataServiceProvider;-><init>(Landroid/telephony/data/DataService;I)V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    invoke-virtual {p1}, Lvendor/qti/iwlan/IWlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lvendor/qti/iwlan/IWlanProxy;->getInstanceBySlotId(Landroid/content/Context;I)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lvendor/qti/iwlan/IWlanDataService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mLooper:Landroid/os/Looper;

    .line 91
    new-instance v1, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;

    iget-object v2, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, p1}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;-><init>(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;Landroid/os/Looper;Lvendor/qti/iwlan/IWlanDataService;)V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    .line 130
    iget-object p1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object p1, p1, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    const-string v2, "Register for data call list changed."

    invoke-virtual {p1, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lvendor/qti/iwlan/IWlanProxy;->registerForDataCallListChanged(Landroid/os/Handler;I)V

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/iwlan/IWlanDataService;ILvendor/qti/iwlan/IWlanDataService$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/iwlan/IWlanDataService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lvendor/qti/iwlan/IWlanDataService$1;

    .line 73
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;-><init>(Lvendor/qti/iwlan/IWlanDataService;I)V

    return-void
.end method

.method static synthetic access$000(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    .line 73
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;
    .param p1, "x1"    # Ljava/util/List;

    .line 73
    invoke-direct {p0, p1}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->getDataCallList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;)Lvendor/qti/iwlan/IWlanProxy;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    .line 73
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    return-object v0
.end method

.method private getDataCallList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation

    .line 135
    .local p1, "dcList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "dcResponseList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataCallResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 137
    .local v2, "dcResult":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->this$0:Lvendor/qti/iwlan/IWlanDataService;

    invoke-virtual {v3, v2}, Lvendor/qti/iwlan/IWlanDataService;->convertDataCallResult(Landroid/hardware/radio/V1_4/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "dcResult":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    goto :goto_0

    .line 139
    :cond_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 190
    sget-object v0, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    const-string v1, "IWlanDataService Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 192
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-static {v0}, Lvendor/qti/iwlan/IWlanProxy;->disableIWlan(Lvendor/qti/iwlan/IWlanProxy;)V

    .line 193
    return-void
.end method

.method public deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 161
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivateDataCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->getSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    .line 166
    .local v0, "message":Landroid/os/Message;
    if-eqz p3, :cond_0

    .line 167
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v1, p1, p2, v0}, Lvendor/qti/iwlan/IWlanProxy;->deactivateDataCall(IILandroid/os/Message;)V

    .line 172
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 196
    const-string v0, "IWlanDataServiceProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanLog;->dataLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    invoke-virtual {v0, p1}, Lvendor/qti/iwlan/LogBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 198
    return-void
.end method

.method public requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 176
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDataCallList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->getSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    .line 181
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 182
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v1, v0}, Lvendor/qti/iwlan/IWlanProxy;->requestDataCallList(Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V
    .locals 11
    .param p1, "accessNetwork"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "callback"    # Landroid/telephony/data/DataServiceCallback;

    .line 146
    move-object v0, p0

    move-object/from16 v1, p7

    iget-object v2, v0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v2, v2, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDataCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->getSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    .line 151
    .local v2, "message":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 152
    iget-object v3, v0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 153
    iget-object v3, v0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    iget-object v4, v0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lvendor/qti/iwlan/IWlanProxy;->setupDataCall(Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V

    .line 157
    return-void
.end method
