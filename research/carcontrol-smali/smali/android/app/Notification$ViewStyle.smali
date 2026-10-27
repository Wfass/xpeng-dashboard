.class public Landroid/app/Notification$ViewStyle;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewStyle"
.end annotation


# instance fields
.field public bigPictureDay:Landroid/graphics/Bitmap;

.field public bigPictureDayUrl:Ljava/lang/String;

.field public bigPictureNight:Landroid/graphics/Bitmap;

.field public bigPictureNightUrl:Ljava/lang/String;

.field public iconDay:Landroid/graphics/Bitmap;

.field public iconDayUrl:Ljava/lang/String;

.field public iconNight:Landroid/graphics/Bitmap;

.field public iconNightUrl:Ljava/lang/String;

.field public style:I

.field public titleGravity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 3999
    iput-object p1, p0, Landroid/app/Notification$ViewStyle;->bigPictureDay:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 4004
    iput-object p1, p0, Landroid/app/Notification$ViewStyle;->bigPictureDay:Landroid/graphics/Bitmap;

    .line 4005
    iput-object p2, p0, Landroid/app/Notification$ViewStyle;->bigPictureNight:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public bigPictureUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 4010
    iput-object p1, p0, Landroid/app/Notification$ViewStyle;->bigPictureDayUrl:Ljava/lang/String;

    .line 4011
    iput-object p2, p0, Landroid/app/Notification$ViewStyle;->bigPictureNightUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 4016
    iput-object p1, p0, Landroid/app/Notification$ViewStyle;->iconDay:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 4021
    iput-object p1, p0, Landroid/app/Notification$ViewStyle;->iconDay:Landroid/graphics/Bitmap;

    .line 4022
    iput-object p2, p0, Landroid/app/Notification$ViewStyle;->iconNight:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 4027
    iput-object p1, p0, Landroid/app/Notification$ViewStyle;->iconDayUrl:Ljava/lang/String;

    .line 4028
    iput-object p2, p0, Landroid/app/Notification$ViewStyle;->iconNightUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setStyle(I)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 3994
    iput p1, p0, Landroid/app/Notification$ViewStyle;->style:I

    return-object p0
.end method

.method public setTitleGravity(I)Landroid/app/Notification$ViewStyle;
    .locals 0

    .line 4033
    iput p1, p0, Landroid/app/Notification$ViewStyle;->titleGravity:I

    return-object p0
.end method
