.class Lcom/xiaopeng/lib/http/logging/a$d;
.super Ljava/lang/Object;
.source "LogCacher.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/logging/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/logging/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic Vg:Lcom/xiaopeng/lib/http/logging/a;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/http/logging/a;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/a$d;->Vg:Lcom/xiaopeng/lib/http/logging/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/http/logging/a;Lcom/xiaopeng/lib/http/logging/a$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/http/logging/a$d;-><init>(Lcom/xiaopeng/lib/http/logging/a;)V

    return-void
.end method


# virtual methods
.method public dC(Ljava/lang/String;)V
    .locals 1

    .line 76
    const-string v0, "HttpsUtils"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    return-void
.end method
