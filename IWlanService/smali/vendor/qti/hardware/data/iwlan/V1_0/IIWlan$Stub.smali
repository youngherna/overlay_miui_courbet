.class public abstract Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;
.super Landroid/os/HwBinder;
.source "IIWlan.java"

# interfaces
.implements Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 610
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

    .line 623
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 660
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 661
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 662
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 663
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 664
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

    .line 635
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
        0x10t
        0x2ct
        -0x4t
        -0x64t
        0x1et
        -0x40t
        -0x5bt
        -0x1at
        -0x7et
        -0x49t
        0x4ft
        -0x63t
        0x6et
        0x56t
        0x5at
        -0x7bt
        -0x76t
        0x3bt
        0x55t
        0x1t
        -0x2at
        0x64t
        0x36t
        0x15t
        -0x1dt
        0x1ft
        0x21t
        0x51t
        -0x7at
        0x38t
        -0x23t
        0x3bt
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

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.data.iwlan@1.0::IIWlan"

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

    .line 629
    const-string v0, "vendor.qti.hardware.data.iwlan@1.0::IIWlan"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 670
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 672
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 16
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v0, 0x0

    const-string v1, "vendor.qti.hardware.data.iwlan@1.0::IIWlan"

    packed-switch p1, :pswitch_data_0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 886
    :sswitch_0
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->notifySyspropsChanged()V

    .line 889
    goto/16 :goto_1

    .line 875
    :sswitch_1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 878
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 879
    invoke-virtual {v1, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 881
    goto/16 :goto_1

    .line 865
    .end local v1    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->ping()V

    .line 868
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_1

    .line 852
    :sswitch_3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->setHALInstrumentation()V

    .line 855
    goto/16 :goto_1

    .line 818
    :sswitch_4
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 821
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 825
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 826
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 827
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 828
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 829
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 831
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 832
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 834
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 838
    invoke-virtual {v0, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 839
    nop

    .line 829
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 835
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 842
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 844
    .end local v0    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 846
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto/16 :goto_1

    .line 807
    .end local v1    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 811
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 813
    goto/16 :goto_1

    .line 795
    .end local v1    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_6
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v1

    .line 798
    .local v1, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 799
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v1, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 800
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 802
    goto/16 :goto_1

    .line 784
    .end local v1    # "fd":Landroid/os/NativeHandle;
    .end local v2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 787
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 790
    goto/16 :goto_1

    .line 776
    .end local v1    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->iwlanDisabled()V

    .line 779
    goto/16 :goto_1

    .line 768
    :pswitch_1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->responseAcknowledgement()V

    .line 771
    goto/16 :goto_1

    .line 759
    :pswitch_2
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 762
    .local v0, "serial":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->getAllQualifiedNetworks(I)V

    .line 763
    goto/16 :goto_1

    .line 750
    .end local v0    # "serial":I
    :pswitch_3
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 753
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->getDataRegistrationState(I)V

    .line 754
    goto :goto_1

    .line 741
    .end local v0    # "serial":I
    :pswitch_4
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 744
    .restart local v0    # "serial":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->getDataCallList(I)V

    .line 745
    goto :goto_1

    .line 730
    .end local v0    # "serial":I
    :pswitch_5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 733
    .restart local v0    # "serial":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 734
    .local v1, "cid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 735
    .local v2, "reason":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->deactivateDataCall(III)V

    .line 736
    goto :goto_1

    .line 715
    .end local v0    # "serial":I
    .end local v1    # "cid":I
    .end local v2    # "reason":I
    :pswitch_6
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 718
    .local v10, "serial":I
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    move-object v11, v0

    .line 719
    .local v11, "dataProfile":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {v11, v8}, Landroid/hardware/radio/V1_4/DataProfileInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v12

    .line 721
    .local v12, "allowRoaming":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 722
    .local v13, "reason":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    .line 723
    .local v14, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v15

    .line 724
    .local v15, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->setupDataCall(ILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 725
    goto :goto_1

    .line 703
    .end local v10    # "serial":I
    .end local v11    # "dataProfile":Landroid/hardware/radio/V1_4/DataProfileInfo;
    .end local v12    # "allowRoaming":Z
    .end local v13    # "reason":I
    .end local v14    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;

    move-result-object v1

    .line 706
    .local v1, "dataResponse":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication;

    move-result-object v2

    .line 707
    .local v2, "dataIndication":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication;
    invoke-virtual {v7, v1, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->setResponseFunctions(Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication;)V

    .line 708
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 710
    nop

    .line 898
    .end local v1    # "dataResponse":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;
    .end local v2    # "dataIndication":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
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

    .line 654
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 682
    const-string v0, "vendor.qti.hardware.data.iwlan@1.0::IIWlan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    return-object p0

    .line 685
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

    .line 689
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->registerService(Ljava/lang/String;)V

    .line 690
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 644
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 676
    const/4 v0, 0x1

    return v0
.end method
