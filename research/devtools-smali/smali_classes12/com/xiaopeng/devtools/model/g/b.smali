.class public Lcom/xiaopeng/devtools/model/g/b;
.super Ljava/lang/Object;
.source "ControlPanelModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/g/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/g/b$a;
    }
.end annotation


# instance fields
.field private uF:Lcom/xiaopeng/devtools/presenter/f/d;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/f/d;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/g/b;->uF:Lcom/xiaopeng/devtools/presenter/f/d;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/g/b;)Lcom/xiaopeng/devtools/presenter/f/d;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/g/b;->uF:Lcom/xiaopeng/devtools/presenter/f/d;

    return-object p0
.end method


# virtual methods
.method public hD()V
    .locals 2

    .line 26
    new-instance v0, Lcom/xiaopeng/devtools/model/g/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/g/b$a;-><init>(Lcom/xiaopeng/devtools/model/g/b;Lcom/xiaopeng/devtools/model/g/b$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/g/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void
.end method
