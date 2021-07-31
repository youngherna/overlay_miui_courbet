.class Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;
.super Landroid/os/Handler;
.source "IWlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;-><init>(Lvendor/qti/iwlan/IWlanDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

.field final synthetic val$this$0:Lvendor/qti/iwlan/IWlanDataService;


# direct methods
.method constructor <init>(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;Landroid/os/Looper;Lvendor/qti/iwlan/IWlanDataService;)V
    .locals 0
    .param p1, "this$1"    # Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 91
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    iput-object p3, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;->val$this$0:Lvendor/qti/iwlan/IWlanDataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 94
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    invoke-static {v0}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->access$000(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 96
    .local v0, "callback":Landroid/telephony/data/DataServiceCallback;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lvendor/qti/iwlan/AsyncResult;

    .line 97
    .local v1, "ar":Lvendor/qti/iwlan/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    if-eq v2, v5, :cond_0

    .line 124
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    invoke-static {v2}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->access$200(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v2

    iget-object v2, v2, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 121
    :cond_0
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    iget-object v3, v1, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v2, v3}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->access$100(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->notifyDataCallListChanged(Ljava/util/List;)V

    .line 122
    goto :goto_4

    .line 111
    :cond_1
    nop

    .line 112
    iget-object v2, v1, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 113
    move v4, v5

    goto :goto_0

    .line 114
    :cond_2
    nop

    .line 115
    :goto_0
    iget-object v2, v1, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 116
    const/4 v2, 0x0

    goto :goto_1

    .line 117
    :cond_3
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    iget-object v3, v1, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v2, v3}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->access$100(Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 111
    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    .line 119
    goto :goto_4

    .line 106
    :cond_4
    iget-object v2, v1, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 107
    move v4, v5

    goto :goto_2

    .line 108
    :cond_5
    nop

    .line 106
    :goto_2
    invoke-virtual {v0, v4}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    .line 109
    goto :goto_4

    .line 99
    :cond_6
    iget-object v2, v1, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 100
    .local v2, "result":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    iget-object v3, v1, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 101
    move v4, v5

    goto :goto_3

    .line 102
    :cond_7
    nop

    :goto_3
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider$1;->this$1:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    iget-object v3, v3, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->this$0:Lvendor/qti/iwlan/IWlanDataService;

    .line 103
    invoke-virtual {v3, v2}, Lvendor/qti/iwlan/IWlanDataService;->convertDataCallResult(Landroid/hardware/radio/V1_4/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;

    move-result-object v3

    .line 100
    invoke-virtual {v0, v4, v3}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    .line 104
    nop

    .line 127
    .end local v2    # "result":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    :goto_4
    return-void
.end method
