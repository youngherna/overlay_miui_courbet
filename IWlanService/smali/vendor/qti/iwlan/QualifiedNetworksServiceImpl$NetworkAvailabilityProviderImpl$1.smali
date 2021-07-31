.class Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;
.super Landroid/os/Handler;
.source "QualifiedNetworksServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;-><init>(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

.field final synthetic val$this$0:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;


# direct methods
.method constructor <init>(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;Landroid/os/Looper;Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;)V
    .locals 0
    .param p1, "this$1"    # Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 56
    iput-object p1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;->this$1:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    iput-object p3, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;->val$this$0:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lvendor/qti/iwlan/AsyncResult;

    .line 61
    .local v0, "ar":Lvendor/qti/iwlan/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 72
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;->this$1:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    invoke-static {v1}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->access$000(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v1

    iget-object v1, v1, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "info changed, Calling updateQualifiedNetworks"

    invoke-virtual {v1, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;->this$1:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    iget-object v2, v0, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->access$100(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;Ljava/util/List;)V

    .line 70
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;->this$1:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    invoke-static {v1}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->access$000(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v1

    iget-object v1, v1, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "get complete, Calling updateQualifiedNetworks"

    invoke-virtual {v1, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;->this$1:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    iget-object v2, v0, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1, v2}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->access$100(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;Ljava/util/List;)V

    .line 66
    nop

    .line 74
    :goto_0
    return-void
.end method
