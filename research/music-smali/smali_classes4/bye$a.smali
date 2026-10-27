.class public Lbye$a;
.super Ljava/lang/Object;
.source "VuiElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/google/gson/JsonObject;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Object;

.field private i:Lcom/google/gson/JsonObject;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lbye$a;->a:Ljava/lang/String;

    const-string v1, ""

    .line 382
    iput-object v1, p0, Lbye$a;->b:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lbye$a;->c:Ljava/lang/String;

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lbye$a;->d:J

    .line 385
    iput-object v0, p0, Lbye$a;->e:Lcom/google/gson/JsonObject;

    .line 386
    iput-object v0, p0, Lbye$a;->f:Ljava/lang/Boolean;

    .line 387
    iput-object v0, p0, Lbye$a;->g:Ljava/lang/Boolean;

    .line 388
    iput-object v0, p0, Lbye$a;->h:Ljava/lang/Object;

    .line 389
    iput-object v0, p0, Lbye$a;->i:Lcom/google/gson/JsonObject;

    .line 390
    iput-object v0, p0, Lbye$a;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lbye$a;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lbye$a;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lbye$a;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lbye$a;)J
    .locals 2

    .line 380
    iget-wide v0, p0, Lbye$a;->d:J

    return-wide v0
.end method

.method static synthetic e(Lbye$a;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->e:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic f(Lbye$a;)Ljava/lang/Boolean;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic g(Lbye$a;)Ljava/lang/Boolean;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic h(Lbye$a;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->i:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic i(Lbye$a;)Ljava/lang/Object;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lbye$a;)Ljava/lang/String;
    .locals 0

    .line 380
    iget-object p0, p0, Lbye$a;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(J)Lbye$a;
    .locals 0

    .line 405
    iput-wide p1, p0, Lbye$a;->d:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbye$a;
    .locals 0

    .line 393
    iput-object p1, p0, Lbye$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lbye;
    .locals 1

    .line 444
    new-instance v0, Lbye;

    invoke-direct {v0, p0}, Lbye;-><init>(Lbye$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lbye$a;
    .locals 0

    .line 397
    iput-object p1, p0, Lbye$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lbye$a;
    .locals 0

    .line 401
    iput-object p1, p0, Lbye$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lbye$a;
    .locals 0

    .line 410
    invoke-static {p1}, Lbye;->getElementAction(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    iput-object p1, p0, Lbye$a;->e:Lcom/google/gson/JsonObject;

    return-object p0
.end method
