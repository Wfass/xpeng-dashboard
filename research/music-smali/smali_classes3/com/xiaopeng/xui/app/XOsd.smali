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

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 35
    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 75
    invoke-static/range {v0 .. v8}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;IIII)V

    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;IIII)V
    .locals 5

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 99
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "channel_id_osd"

    const-string v4, "channel_name_osd"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 101
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x108005b

    .line 102
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 103
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.osd.title"

    .line 104
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "android.osd.title.icon.left"

    .line 105
    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "android.osd.title.icon.right"

    .line 106
    invoke-virtual {v2, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "android.osd.icon"

    .line 107
    invoke-virtual {v2, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "android.osd.content"

    .line 108
    invoke-virtual {v2, p0, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "android.osd.progress"

    .line 109
    invoke-virtual {v2, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "android.osd.progress.min"

    .line 110
    invoke-virtual {v2, p0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "android.osd.progress.max"

    .line 111
    invoke-virtual {v2, p0, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x2

    const-string p1, "android.displayFlag"

    .line 112
    invoke-virtual {v2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, -0x1

    if-eq p8, p0, :cond_0

    const-string p0, "android.osd.shared.id"

    .line 114
    invoke-virtual {v2, p0, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    :cond_0
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    const/16 p0, 0x64

    .line 117
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public static showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    .line 46
    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XOsd;->showOsd(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;III)V

    return-void
.end method
