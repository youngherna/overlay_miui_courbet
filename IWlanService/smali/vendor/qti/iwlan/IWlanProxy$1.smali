.class Lvendor/qti/iwlan/IWlanProxy$1;
.super Landroid/os/Handler;
.source "IWlanProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/iwlan/IWlanProxy;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/iwlan/IWlanProxy;


# direct methods
.method constructor <init>(Lvendor/qti/iwlan/IWlanProxy;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/iwlan/IWlanProxy;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 133
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 172
    :cond_0
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: EVENT_PROXY_DEAD cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mServiceCookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v3, v3, Lvendor/qti/iwlan/IWlanProxy;->mServiceCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 173
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v2, v2, Lvendor/qti/iwlan/IWlanProxy;->mServiceCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 175
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    invoke-static {v0}, Lvendor/qti/iwlan/IWlanProxy;->access$100(Lvendor/qti/iwlan/IWlanProxy;)V

    goto/16 :goto_1

    .line 166
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget v1, v1, Lvendor/qti/iwlan/IWlanProxy;->mRespWlSequenceNum:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->access$000(Lvendor/qti/iwlan/IWlanProxy;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    const-string v2, "RESP_WAKE_LOCK_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 154
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget v2, v2, Lvendor/qti/iwlan/IWlanProxy;->mWlSequenceNum:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lvendor/qti/iwlan/IWlanProxy;->access$000(Lvendor/qti/iwlan/IWlanProxy;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v1, v1, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 156
    .local v1, "count":I
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v2, v2, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WAKE_LOCK_TIMEOUT  mRequestList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 158
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v3, v3, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/iwlan/IWlanRequest;

    .line 159
    .local v3, "req":Lvendor/qti/iwlan/IWlanRequest;
    iget-object v4, p0, Lvendor/qti/iwlan/IWlanProxy$1;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v4, v4, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v5, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v7}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "req":Lvendor/qti/iwlan/IWlanRequest;
    :cond_3
    monitor-exit v0

    .line 163
    nop

    .line 179
    :cond_4
    :goto_1
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
