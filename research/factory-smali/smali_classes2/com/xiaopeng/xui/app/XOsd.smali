.class public Lcom/xiaopeng/xui/app/XOsd;
.super Ljava/lang/Object;
.source "XOsd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;III)V
    .locals 8
    .param p0, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "progress"    # I
    .param p3, "progressMin"    # I
    .param p4, "progressMax"    # I

    .line 30
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    .line 32
    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "left"    # Landroid/graphics/drawable/Icon;
    .param p2, "right"    # Landroid/graphics/drawable/Icon;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "content"    # Ljava/lang/CharSequence;

    .line 54
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    .line 56
    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V
    .locals 18
    .param p0, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "left"    # Landroid/graphics/drawable/Icon;
    .param p2, "right"    # Landroid/graphics/drawable/Icon;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "content"    # Ljava/lang/CharSequence;
    .param p5, "progress"    # I
    .param p6, "progressMin"    # I
    .param p7, "progressMax"    # I

    .line 70
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    const/16 v0, 0x64

    .line 72
    .local v0, "OSD_NOTIFICATION_ID":I
    const-string v1, "channel_id_osd"

    .line 73
    .local v1, "CHANNEL_ID":Ljava/lang/String;
    const-string v2, "channel_name_osd"

    .line 74
    .local v2, "CHANNEL_NAME":Ljava/lang/String;
    const/4 v3, 0x2

    .line 75
    .local v3, "FLAG_DISPLAY_OSD":I
    const-string v4, "android.displayFlag"

    .line 76
    .local v4, "EXTRA_DISPLAY_FLAG":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 77
    .local v5, "manager":Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/NotificationChannel;

    const-string v7, "channel_id_osd"

    const-string v8, "channel_name_osd"

    const/4 v9, 0x3

    invoke-direct {v6, v7, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 78
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 79
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "channel_id_osd"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    .local v7, "builder":Landroid/app/Notification$Builder;
    const v8, 0x108005b

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 81
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 82
    .local v8, "extra":Landroid/os/Bundle;
    const-string v9, "android.osd.title"

    move-object/from16 v10, p0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 83
    const-string v9, "android.osd.title.icon.left"

    move-object/from16 v11, p1

    invoke-virtual {v8, v9, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    const-string v9, "android.osd.title.icon.right"

    move-object/from16 v12, p2

    invoke-virtual {v8, v9, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    const-string v9, "android.osd.icon"

    move-object/from16 v13, p3

    invoke-virtual {v8, v9, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    const-string v9, "android.osd.content"

    move-object/from16 v14, p4

    invoke-virtual {v8, v9, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 87
    const-string v9, "android.osd.progress"

    move/from16 v15, p5

    invoke-virtual {v8, v9, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v9, "android.osd.progress.min"

    move/from16 v16, v0

    move/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    .end local v0    # "OSD_NOTIFICATION_ID":I
    .local v16, "OSD_NOTIFICATION_ID":I
    const-string v9, "android.osd.progress.max"

    move/from16 v0, p7

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v9, "android.displayFlag"

    const/4 v0, 0x2

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 92
    const/16 v0, 0x64

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v5, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .end local v1    # "CHANNEL_ID":Ljava/lang/String;
    .end local v2    # "CHANNEL_NAME":Ljava/lang/String;
    .end local v3    # "FLAG_DISPLAY_OSD":I
    .end local v4    # "EXTRA_DISPLAY_FLAG":Ljava/lang/String;
    .end local v5    # "manager":Landroid/app/NotificationManager;
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    .end local v7    # "builder":Landroid/app/Notification$Builder;
    .end local v8    # "extra":Landroid/os/Bundle;
    .end local v16    # "OSD_NOTIFICATION_ID":I
    goto :goto_0

    .line 94
    :cond_0
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    :goto_0
    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .line 41
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    .line 43
    return-void
.end method
