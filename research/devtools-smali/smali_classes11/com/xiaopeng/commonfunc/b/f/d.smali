.class public Lcom/xiaopeng/commonfunc/b/f/d;
.super Ljava/lang/Object;
.source "PsuKeyModel.java"


# static fields
.field public static ov:Ljava/lang/String;


# instance fields
.field private final of:Lcom/xiaopeng/commonfunc/b/e/a;

.field private ow:Z

.field private ox:Z

.field private final oy:Lcom/xiaopeng/commonfunc/b/f/c;

.field private oz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-string v0, "psu_host"

    const-string v1, "http://10.0.11.90"

    const-string v2, "http://pso-int.xiaopeng.com"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/a/b;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/b/f/d;->ov:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/b/f/d;->ow:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/b/f/d;->ox:Z

    .line 59
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/b/f/d;->oz:Z

    .line 62
    new-instance v0, Lcom/xiaopeng/commonfunc/b/e/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/b/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/d;->of:Lcom/xiaopeng/commonfunc/b/e/a;

    .line 63
    new-instance v0, Lcom/xiaopeng/commonfunc/b/f/c;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/b/f/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/d;->oy:Lcom/xiaopeng/commonfunc/b/f/c;

    .line 64
    return-void
.end method


# virtual methods
.method public ed()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/d;->oy:Lcom/xiaopeng/commonfunc/b/f/c;

    const-string v1, "PSO_KEY"

    invoke-static {v1}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/b/f/c;->aT(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 81
    return-void
.end method
