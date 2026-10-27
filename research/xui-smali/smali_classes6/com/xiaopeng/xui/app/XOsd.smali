.class public Lcom/xiaopeng/xui/app/XOsd;
.super Ljava/lang/Object;
.source "XOsd.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ID_SHARED_PRIMARY:I = 0x0

.field public static final ID_SHARED_SECONDARY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 35
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    .line 37
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

    .line 59
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    .line 61
    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V
    .locals 9
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

    .line 75
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;IIII)V

    .line 76
    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;IIII)V
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
    .param p8, "sharedId"    # I

    .line 92
    move/from16 v0, p8

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    const/16 v1, 0x64

    .line 94
    .local v1, "OSD_NOTIFICATION_ID":I
    const-string v2, "channel_id_osd"

    .line 95
    .local v2, "CHANNEL_ID":Ljava/lang/String;
    const-string v3, "channel_name_osd"

    .line 96
    .local v3, "CHANNEL_NAME":Ljava/lang/String;
    const/4 v4, 0x2

    .line 97
    .local v4, "FLAG_DISPLAY_OSD":I
    const-string v5, "android.displayFlag"

    .line 98
    .local v5, "EXTRA_DISPLAY_FLAG":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 99
    .local v6, "manager":Landroid/app/NotificationManager;
    new-instance v7, Landroid/app/NotificationChannel;

    const-string v8, "channel_id_osd"

    const-string v9, "channel_name_osd"

    const/4 v10, 0x3

    invoke-direct {v7, v8, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    .local v7, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 101
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "channel_id_osd"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    .local v8, "builder":Landroid/app/Notification$Builder;
    const v9, 0x108005b

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 103
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 104
    .local v9, "extra":Landroid/os/Bundle;
    const-string v10, "android.osd.title"

    move-object/from16 v11, p0

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 105
    const-string v10, "android.osd.title.icon.left"

    move-object/from16 v12, p1

    invoke-virtual {v9, v10, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    const-string v10, "android.osd.title.icon.right"

    move-object/from16 v13, p2

    invoke-virtual {v9, v10, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    const-string v10, "android.osd.icon"

    move-object/from16 v14, p3

    invoke-virtual {v9, v10, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    const-string v10, "android.osd.content"

    move-object/from16 v15, p4

    invoke-virtual {v9, v10, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 109
    const-string v10, "android.osd.progress"

    move/from16 v16, v1

    move/from16 v1, p5

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .end local v1    # "OSD_NOTIFICATION_ID":I
    .local v16, "OSD_NOTIFICATION_ID":I
    const-string v10, "android.osd.progress.min"

    move/from16 v1, p6

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v10, "android.osd.progress.max"

    move/from16 v1, p7

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v10, "android.displayFlag"

    const/4 v1, 0x2

    invoke-virtual {v9, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 114
    const-string v1, "android.osd.shared.id"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    :cond_0
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 117
    const/16 v1, 0x64

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v6, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .end local v2    # "CHANNEL_ID":Ljava/lang/String;
    .end local v3    # "CHANNEL_NAME":Ljava/lang/String;
    .end local v4    # "FLAG_DISPLAY_OSD":I
    .end local v5    # "EXTRA_DISPLAY_FLAG":Ljava/lang/String;
    .end local v6    # "manager":Landroid/app/NotificationManager;
    .end local v7    # "channel":Landroid/app/NotificationChannel;
    .end local v8    # "builder":Landroid/app/Notification$Builder;
    .end local v9    # "extra":Landroid/os/Bundle;
    .end local v16    # "OSD_NOTIFICATION_ID":I
    goto :goto_0

    .line 119
    :cond_1
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

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

    .line 46
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    .line 48
    return-void
.end method
