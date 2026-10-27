.class public final Landroid/app/Notification$CarExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$CarExtender$Builder;,
        Landroid/app/Notification$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field private static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final TAG:Ljava/lang/String; = "CarExtender"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12023
    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 2

    .line 12036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12023
    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    .line 12037
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12038
    :cond_0
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "large_icon"

    .line 12040
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    const-string v1, "app_color"

    .line 12041
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    const-string v0, "car_conversation"

    .line 12043
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 12044
    invoke-static {p1}, Landroid/app/Notification$CarExtender$UnreadConversation;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    :cond_1
    return-void
.end method


# virtual methods
.method public extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 3

    .line 12055
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12057
    iget-object v1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const-string v2, "large_icon"

    .line 12058
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12060
    :cond_0
    iget v1, p0, Landroid/app/Notification$CarExtender;->mColor:I

    if-eqz v1, :cond_1

    const-string v2, "app_color"

    .line 12061
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12064
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    if-eqz v1, :cond_2

    .line 12065
    invoke-virtual {v1}, Landroid/app/Notification$CarExtender$UnreadConversation;->getBundleForUnreadConversation()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "car_conversation"

    .line 12066
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12069
    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getColor()I
    .locals 1

    .line 12093
    iget v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 12117
    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 1

    .line 12136
    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Landroid/app/Notification$CarExtender;
    .locals 0

    .line 12082
    iput p1, p0, Landroid/app/Notification$CarExtender;->mColor:I

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$CarExtender;
    .locals 0

    .line 12106
    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setUnreadConversation(Landroid/app/Notification$CarExtender$UnreadConversation;)Landroid/app/Notification$CarExtender;
    .locals 0

    .line 12127
    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    return-object p0
.end method
