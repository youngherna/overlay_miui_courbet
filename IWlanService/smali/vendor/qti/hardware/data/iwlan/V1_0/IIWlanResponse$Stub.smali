.class public abstract Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;
.super Landroid/os/HwBinder;
.source "IIWlanResponse.java"

# interfaces
.implements Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 584
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 587
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 600
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 637
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 638
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 639
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 640
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 641
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x6ct
        0x25t
        0x65t
        0x68t
        -0x2et
        0x12t
        -0x56t
        0x4dt
        0x2bt
        -0x67t
        0x11t
        -0x6ct
        0x2ft
        0x61t
        -0x74t
        -0x64t
        -0x66t
        0x5t
        -0x4ft
        -0xct
        0x1et
        -0x47t
        -0x4bt
        -0x78t
        0x27t
        -0x6et
        0x38t
        0x7bt
        0x11t
        -0x61t
        0x4at
        0x7dt
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.data.iwlan@1.0::IIWlanResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 606
    const-string v0, "vendor.qti.hardware.data.iwlan@1.0::IIWlanResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 647
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 649
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    const-string v0, "vendor.qti.hardware.data.iwlan@1.0::IIWlanResponse"

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 847
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->notifySyspropsChanged()V

    .line 850
    goto/16 :goto_1

    .line 836
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 839
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 840
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 842
    goto/16 :goto_1

    .line 826
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->ping()V

    .line 829
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 831
    goto/16 :goto_1

    .line 813
    :sswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->setHALInstrumentation()V

    .line 816
    goto/16 :goto_1

    .line 779
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 782
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 786
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 787
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 788
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 789
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 790
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 792
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 793
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 795
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 799
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 800
    nop

    .line 790
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 796
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 803
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 805
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 807
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto/16 :goto_1

    .line 768
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto/16 :goto_1

    .line 756
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 759
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 760
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 761
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 763
    goto/16 :goto_1

    .line 745
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 748
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 749
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 750
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 751
    goto :goto_1

    .line 736
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 739
    .local v0, "serial":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->acknowledgeRequest(I)V

    .line 740
    goto :goto_1

    .line 725
    .end local v0    # "serial":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    new-instance v0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;-><init>()V

    .line 728
    .local v0, "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 729
    invoke-static {p2}, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 730
    .local v1, "qualifiedNetworksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->getAllQualifiedNetworksResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V

    .line 731
    goto :goto_1

    .line 713
    .end local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .end local v1    # "qualifiedNetworksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;>;"
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    new-instance v0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;-><init>()V

    .line 716
    .restart local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 717
    new-instance v1, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;

    invoke-direct {v1}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;-><init>()V

    .line 718
    .local v1, "state":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 719
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->getDataRegistrationStateResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)V

    .line 720
    goto :goto_1

    .line 702
    .end local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .end local v1    # "state":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    new-instance v0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;-><init>()V

    .line 705
    .restart local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 706
    invoke-static {p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 707
    .local v1, "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->getDataCallListResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V

    .line 708
    goto :goto_1

    .line 692
    .end local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .end local v1    # "dcResponse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    new-instance v0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;-><init>()V

    .line 695
    .restart local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 696
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->deactivateDataCallResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;)V

    .line 697
    goto :goto_1

    .line 680
    .end local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    new-instance v0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;-><init>()V

    .line 683
    .restart local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 684
    new-instance v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v1}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 685
    .local v1, "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    invoke-virtual {v1, p2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 686
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->setupDataCallResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 687
    nop

    .line 859
    .end local v0    # "info":Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .end local v1    # "dcResponse":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 631
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 659
    const-string v0, "vendor.qti.hardware.data.iwlan@1.0::IIWlanResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    return-object p0

    .line 662
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 621
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 653
    const/4 v0, 0x1

    return v0
.end method
