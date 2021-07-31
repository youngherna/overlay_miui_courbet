.class Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;
.super Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
.source "QualifiedNetworksServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkAvailabilityProviderImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final proxy:Lvendor/qti/iwlan/IWlanProxy;

.field final synthetic this$0:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;


# direct methods
.method constructor <init>(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;I)V
    .locals 4
    .param p2, "slotIndex"    # I

    .line 48
    iput-object p1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->this$0:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;-><init>(Landroid/telephony/data/QualifiedNetworksService;I)V

    .line 51
    invoke-virtual {p1}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->getSlotIndex()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->getInstanceBySlotId(Landroid/content/Context;I)Lvendor/qti/iwlan/IWlanProxy;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->mLooper:Landroid/os/Looper;

    .line 56
    new-instance v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;

    iget-object v2, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, p1}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl$1;-><init>(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;Landroid/os/Looper;Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;)V

    iput-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 p1, 0x1

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 79
    .local p1, "message":Landroid/os/Message;
    iget-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v1, p1}, Lvendor/qti/iwlan/IWlanProxy;->getAllQualifiedNetworks(Landroid/os/Message;)V

    .line 80
    iget-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v2, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lvendor/qti/iwlan/IWlanProxy;->registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;)Lvendor/qti/iwlan/IWlanProxy;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    .line 40
    iget-object v0, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    return-object v0
.end method

.method static synthetic access$100(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;
    .param p1, "x1"    # Ljava/util/List;

    .line 40
    invoke-direct {p0, p1}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->updateQualifiedNetworks(Ljava/util/List;)V

    return-void
.end method

.method private updateQualifiedNetworks(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "qnpList":Ljava/util/List;, "Ljava/util/List<Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 90
    .local v0, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 91
    .local v1, "apnTypeMaskNullNw":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;

    .line 93
    .local v3, "qNetwork":Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;
    iget-object v5, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->networks:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->networks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    iget-object v5, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->networks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 99
    .local v4, "prefNw":I
    iget-object v5, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v5, v5, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v6, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pref network for apnType  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->apnType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lvendor/qti/iwlan/IWlanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget v5, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->apnType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 102
    .local v5, "apnTypeMask":I
    iget v6, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->apnType:I

    or-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 94
    .end local v4    # "prefNw":I
    .end local v5    # "apnTypeMask":I
    :cond_1
    :goto_1
    iget-object v4, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v4, v4, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v5, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No available networks for apnType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->apnType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lvendor/qti/iwlan/IWlanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget v4, v3, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->apnType:I

    or-int/2addr v1, v4

    .line 104
    .end local v3    # "qNetwork":Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;
    :goto_2
    goto/16 :goto_0

    .line 107
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-string v5, "Calling updateQualifiedNetworkTypes for apnMask "

    if-ge v2, v3, :cond_3

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v3, "resultNetwork":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 111
    .local v6, "resultApnMask":I
    iget-object v7, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v7, v7, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v8, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pref network "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v7, v8, v5}, Lvendor/qti/iwlan/IWlanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v6, v3}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->updateQualifiedNetworkTypes(ILjava/util/List;)V

    .line 107
    .end local v3    # "resultNetwork":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "resultApnMask":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 116
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 117
    iget-object v2, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v2, v2, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with null network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->updateQualifiedNetworkTypes(ILjava/util/List;)V

    .line 122
    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 126
    sget-object v0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    const-string v1, "QNP Service Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-static {v0}, Lvendor/qti/iwlan/IWlanProxy;->disableIWlan(Lvendor/qti/iwlan/IWlanProxy;)V

    .line 129
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 132
    const-string v0, "NetworkAvailabilityProviderImpl:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->proxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanLog;->qnpLogBuffer:Lvendor/qti/iwlan/LogBuffer;

    invoke-virtual {v0, p1}, Lvendor/qti/iwlan/LogBuffer;->dump(Ljava/io/PrintWriter;)V

    .line 134
    return-void
.end method
