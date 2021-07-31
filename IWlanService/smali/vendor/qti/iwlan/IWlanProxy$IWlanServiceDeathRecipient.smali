.class final Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;
.super Ljava/lang/Object;
.source "IWlanProxy.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/iwlan/IWlanProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IWlanServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/iwlan/IWlanProxy;


# direct methods
.method constructor <init>(Lvendor/qti/iwlan/IWlanProxy;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/iwlan/IWlanProxy;

    .line 217
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 5
    .param p1, "cookie"    # J

    .line 220
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceDied, cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lvendor/qti/iwlan/IWlanProxy;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 221
    iget-object v4, p0, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v4, v4, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v4, v4, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;->this$0:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v1, v1, Lvendor/qti/iwlan/IWlanProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    return-void
.end method
