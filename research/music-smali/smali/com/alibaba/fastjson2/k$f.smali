.class final Lcom/alibaba/fastjson2/k$f;
.super Ljava/lang/Object;
.source "JSONPathFunction.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/k$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 411
    new-instance v0, Lcom/alibaba/fastjson2/k$f;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/k$f;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/k$f;->a:Lcom/alibaba/fastjson2/k$f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 415
    invoke-static {p1}, Lcom/alibaba/fastjson2/k;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
