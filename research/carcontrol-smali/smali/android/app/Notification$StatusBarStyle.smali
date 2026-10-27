.class public Landroid/app/Notification$StatusBarStyle;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusBarStyle"
.end annotation


# instance fields
.field public bgColor:I

.field public bgColorName:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public textColor:I

.field public textColorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBgColor(I)Landroid/app/Notification$StatusBarStyle;
    .locals 0

    .line 3963
    iput p1, p0, Landroid/app/Notification$StatusBarStyle;->bgColor:I

    return-object p0
.end method

.method public setBgColorName(Ljava/lang/String;)Landroid/app/Notification$StatusBarStyle;
    .locals 0

    .line 3973
    iput-object p1, p0, Landroid/app/Notification$StatusBarStyle;->bgColorName:Ljava/lang/String;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/app/Notification$StatusBarStyle;
    .locals 0

    .line 3953
    iput-object p1, p0, Landroid/app/Notification$StatusBarStyle;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setTextColor(I)Landroid/app/Notification$StatusBarStyle;
    .locals 0

    .line 3958
    iput p1, p0, Landroid/app/Notification$StatusBarStyle;->textColor:I

    return-object p0
.end method

.method public setTextColorName(Ljava/lang/String;)Landroid/app/Notification$StatusBarStyle;
    .locals 0

    .line 3968
    iput-object p1, p0, Landroid/app/Notification$StatusBarStyle;->textColorName:Ljava/lang/String;

    return-object p0
.end method
