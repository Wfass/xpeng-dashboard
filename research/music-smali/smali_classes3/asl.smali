.class public Lasl;
.super Ljava/lang/Object;
.source "CodriverBluetoothModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasl$a;,
        Lasl$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lasl$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lasl;->a:Z

    .line 32
    new-instance v0, Lasl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lasl$a;-><init>(Lasl;Lasl$1;)V

    iput-object v0, p0, Lasl;->b:Lasl$a;

    return-void
.end method

.method public static a()Lasl;
    .locals 1

    .line 29
    invoke-static {}, Lasl$b;->a()Lasl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lasl;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lasl;->a:Z

    return p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 35
    iget-object v0, p0, Lasl;->b:Lasl$a;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lasl$a;->a(Landroid/content/Context;)V

    return-void
.end method
