.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0o"
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/content/Context;Landroid/content/Intent;Landroid/hardware/usb/UsbDevice;)V
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "intent"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.loostone.tuning.USB_PERMISSION"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "permission"

    .line 4
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 5
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v3, "DongleEventManager"

    const-string v5, "  \u6743\u9650\u7533\u8bf7\u6210\u529f"

    invoke-virtual {v1, v3, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 8
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v1

    .line 9
    iget-object v3, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v5

    .line 11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v6, v4

    :goto_0
    add-int/lit8 v7, v6, 0x1

    .line 12
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v8

    .line 13
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;

    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;->onDonglePermissionGranted(Landroid/hardware/usb/UsbDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-lt v7, v5, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    move v6, v7

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    monitor-exit v1

    if-eqz v2, :cond_1d

    .line 21
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 22
    iget-object v0, v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;

    .line 81
    iget-object v6, v3, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    if-nez v6, :cond_4

    goto :goto_2

    .line 82
    :cond_4
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_5
    move-object v3, v5

    :goto_3
    if-nez v3, :cond_1d

    .line 83
    iget-object v3, v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    monitor-enter v3

    const-string v0, "usbDevice"

    .line 84
    :try_start_1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;

    .line 165
    iget-object v6, v3, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO00o:Landroid/content/Context;

    .line 166
    invoke-direct {v0, v6, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    .line 167
    iget-boolean v6, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooOO0o:Z

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_14

    .line 168
    sget-object v6, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    invoke-virtual {v6}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOO0O()LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_6

    move v6, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_4
    if-ne v6, v8, :cond_7

    .line 172
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v9

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "trim(usbDevice.manufacturerName)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "trim(usbDevice.productName)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "trim(usbDevice.serialNumber)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v9, v10, v11, v12}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 187
    :cond_7
    const/4 v9, -0x1

    move v10, v8

    :goto_5
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v11

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "trim(usbDevice.manufacturerName)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "trim(usbDevice.productName)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO0oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "trim(usbDevice.serialNumber)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v11, v12, v13, v14}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x65

    const/16 v13, 0x64

    if-eq v11, v13, :cond_9

    if-eq v11, v12, :cond_8

    goto :goto_6

    .line 205
    :cond_8
    sget-object v14, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v15, "CachedDongleDeviceManager"

    const-string v4, " \u6ca1\u6709\u6743\u9650\u8bbf\u95eeKO\u6587\u4ef6"

    invoke-virtual {v14, v15, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 206
    :cond_9
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v14, "CachedDongleDeviceManager"

    const-string v15, " \u6ca1\u6709\u52a0\u8f7dKO"

    invoke-virtual {v4, v14, v15}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-ne v11, v8, :cond_a

    move v4, v8

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-ne v10, v9, :cond_b

    move v10, v8

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_8
    and-int/2addr v4, v10

    if-eqz v4, :cond_c

    .line 217
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v10, "CachedDongleDeviceManager"

    const-string v14, " \u91cd\u65b0\u521d\u59cb\u5316\u97f3\u6548"

    invoke-virtual {v4, v10, v14}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v4, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;

    invoke-virtual {v4}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO00o()V

    :cond_c
    if-eq v11, v13, :cond_13

    if-eq v11, v12, :cond_13

    .line 226
    :goto_9
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(Landroid/hardware/usb/UsbDevice;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 228
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o(Landroid/hardware/usb/UsbDevice;I)Z

    move-result v4

    .line 229
    :cond_d
    iget-object v9, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooOOO0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o$OooO00o;

    .line 230
    sget-object v10, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o$OooO00o;->OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o$OooO00o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v9, v10, :cond_e

    goto :goto_a

    :cond_e
    const-string v9, "Loostone PureMic M01"

    .line 231
    :try_start_2
    iget-object v10, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO0oO:Ljava/lang/String;

    .line 232
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 233
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v9, "CachedDongleDeviceManager"

    const-string v10, " Loostone PureMic M01, check result -> true"

    invoke-virtual {v4, v9, v10}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move v4, v8

    :cond_f
    const/4 v9, 0x3

    if-eqz v4, :cond_11

    if-eq v6, v7, :cond_10

    if-eq v6, v9, :cond_10

    .line 247
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v6, "CachedDongleDeviceManager"

    const-string v10, " \u7089\u77f3\u8bbe\u5907\u63a5\u5165(\u901a\u8fc7Hid\u9a8c\u8bc1 SO\u9a8c\u8bc1)"

    invoke-virtual {v4, v6, v10}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 248
    :cond_10
    sget-object v4, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v6, "CachedDongleDeviceManager"

    const-string v10, " \u7089\u77f3\u8bbe\u5907\u63a5\u5165(\u901a\u8fc7Hid\u9a8c\u8bc1 KO\u9a8c\u8bc1)"

    invoke-virtual {v4, v6, v10}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_b
    new-instance v4, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    invoke-direct {v4, v2}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 259
    new-array v2, v9, [B

    fill-array-data v2, :array_0

    invoke-static {v4, v2, v5, v7}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;[BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 260
    new-array v6, v9, [B

    fill-array-data v6, :array_1

    invoke-static {v4, v6, v5, v7}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;[BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 263
    iput-object v2, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooO:Ljava/lang/String;

    .line 264
    new-array v2, v9, [B

    fill-array-data v2, :array_2

    invoke-static {v4, v2, v5, v7}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;[BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 265
    iput-object v2, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooOO0:Ljava/lang/String;

    .line 266
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o()V

    .line 268
    invoke-virtual {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0OO()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iput v7, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooOO0O:I

    .line 270
    iput-object v0, v3, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;

    goto :goto_d

    :cond_11
    if-eq v6, v7, :cond_12

    if-eq v6, v9, :cond_12

    .line 271
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v4, "CachedDongleDeviceManager"

    const-string v5, " \u7089\u77f3\u8bbe\u5907\u63a5\u5165(\u672a\u901a\u8fc7Hid\u9a8c\u8bc1 SO\u9a8c\u8bc1)"

    invoke-virtual {v2, v4, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 272
    :cond_12
    sget-object v2, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v4, "CachedDongleDeviceManager"

    const-string v5, " \u7089\u77f3\u8bbe\u5907\u63a5\u5165(\u672a\u901a\u8fc7Hid\u9a8c\u8bc1 KO\u9a8c\u8bc1)"

    invoke-virtual {v2, v4, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_c
    iput v8, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooOO0O:I

    goto :goto_d

    .line 187
    :cond_13
    move v10, v9

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 274
    :cond_14
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "CachedDongleDeviceManager"

    const-string v4, " \u975e\u7089\u77f3\u8bbe\u5907\u63a5\u5165"

    invoke-virtual {v0, v2, v4}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v5

    :goto_d
    monitor-exit v3

    if-eqz v0, :cond_1d

    .line 275
    iget v2, v0, LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;->OooOO0O:I

    if-eq v2, v8, :cond_17

    if-eq v2, v7, :cond_15

    goto/16 :goto_13

    :cond_15
    monitor-enter v1

    const-string v2, "cachedDongleDevice"

    .line 276
    :try_start_3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v3, 0x0

    :goto_e
    add-int/lit8 v4, v3, 0x1

    .line 563
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;

    invoke-interface {v3, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;->onDeviceAddedWithHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v4, v2, :cond_16

    goto :goto_10

    .line 562
    :cond_16
    move v3, v4

    goto :goto_e

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_17
    monitor-enter v1

    const-string v2, "cachedDongleDevice"

    .line 564
    :try_start_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v3, 0x0

    :goto_f
    add-int/lit8 v4, v3, 0x1

    .line 858
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;

    invoke-interface {v3, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;->onDeviceDeniedByHid(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lt v4, v2, :cond_18

    goto :goto_10

    .line 857
    :cond_18
    move v3, v4

    goto :goto_f

    .line 859
    :cond_19
    :goto_10
    monitor-exit v1

    goto :goto_13

    :catchall_1
    move-exception v0

    .line 860
    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_3
    move-exception v0

    .line 861
    monitor-exit v1

    throw v0

    .line 870
    :cond_1a
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "DongleEventManager"

    const-string v3, "  \u6743\u9650\u7533\u8bf7\u5931\u8d25"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    .line 873
    invoke-virtual {v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v1

    .line 874
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    monitor-enter v1

    .line 875
    :try_start_5
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v2

    .line 876
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    const/4 v3, 0x0

    :goto_11
    add-int/lit8 v4, v3, 0x1

    .line 877
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v5

    .line 878
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;

    invoke-interface {v3}, LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;->onDonglePermissionDenied()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-lt v4, v2, :cond_1b

    goto :goto_12

    .line 876
    :cond_1b
    move v3, v4

    goto :goto_11

    .line 879
    :cond_1c
    :goto_12
    monitor-exit v1

    :cond_1d
    :goto_13
    return-void

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :array_0
    .array-data 1
        -0x3t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x4t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x2t
        0x0t
        0x0t
    .end array-data
.end method
