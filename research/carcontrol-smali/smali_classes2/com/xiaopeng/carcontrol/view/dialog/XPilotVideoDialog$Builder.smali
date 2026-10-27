.class Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;
.super Ljava/lang/Object;
.source "XPilotVideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private forceWatch:Z

.field private hasNegativeButton:Z

.field private tips:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videoPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build(Landroid/content/Context;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->setVideoTips(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->setVideoPath(Ljava/lang/String;)V

    .line 113
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->forceWatch:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->setForceWatch(Z)V

    .line 114
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->hasNegativeButton:Z

    if-eqz v1, :cond_0

    .line 115
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    :cond_0
    return-object v0
.end method

.method forceWatch(Z)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceWatch"
        }
    .end annotation

    .line 104
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->forceWatch:Z

    return-object p0
.end method

.method hasNegative(Z)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasNegative"
        }
    .end annotation

    .line 99
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->hasNegativeButton:Z

    return-object p0
.end method

.method tips(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->tips:Ljava/lang/String;

    return-object p0
.end method

.method title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method videoPath(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoPath"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XPilotVideoDialog$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method
