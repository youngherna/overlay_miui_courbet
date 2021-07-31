.class Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;
.super Landroid/os/Handler;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;-><init>(Lvendor/qti/iwlan/IWlanNetworkService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

.field final synthetic val$this$0:Lvendor/qti/iwlan/IWlanNetworkService;


# direct methods
.method constructor <init>(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;Landroid/os/Looper;Lvendor/qti/iwlan/IWlanNetworkService;)V
    .locals 0
    .param p1, "this$1"    # Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 77
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    iput-object p3, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;->val$this$0:Lvendor/qti/iwlan/IWlanNetworkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .line 80
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-static {v0}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->access$000(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkServiceCallback;

    .line 83
    .local v0, "callback":Landroid/telephony/NetworkServiceCallback;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 108
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-virtual {v1}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->notifyNetworkRegistrationInfoChanged()V

    .line 106
    goto :goto_2

    .line 85
    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 86
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lvendor/qti/iwlan/AsyncResult;

    .line 87
    .local v1, "ar":Lvendor/qti/iwlan/AsyncResult;
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    iget-object v3, v1, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;

    invoke-static {v2, v3}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->access$100(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    .line 90
    .local v2, "netState":Landroid/telephony/NetworkRegistrationInfo;
    iget-object v3, v1, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    .line 93
    :cond_3
    const/4 v3, 0x0

    .local v3, "resultCode":I
    goto :goto_1

    .line 91
    .end local v3    # "resultCode":I
    :cond_4
    :goto_0
    const/4 v3, 0x5

    .line 97
    .restart local v3    # "resultCode":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-static {v4}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->access$200(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v4

    iget-object v4, v4, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v5, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling callback.onGetNetworkRegistrationInfoComplete.resultCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", netState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v3, v2}, Landroid/telephony/NetworkServiceCallback;->onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_2

    .line 100
    :catch_0
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-static {v5}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->access$200(Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v5

    iget-object v5, v5, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v6, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v4    # "e":Ljava/lang/Exception;
    nop

    .line 110
    .end local v1    # "ar":Lvendor/qti/iwlan/AsyncResult;
    .end local v2    # "netState":Landroid/telephony/NetworkRegistrationInfo;
    .end local v3    # "resultCode":I
    :goto_2
    return-void
.end method
