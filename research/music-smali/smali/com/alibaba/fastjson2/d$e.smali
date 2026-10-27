.class final Lcom/alibaba/fastjson2/d$e;
.super Ljava/lang/Object;
.source "JSONFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/alibaba/fastjson2/d$e;->a:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lcom/alibaba/fastjson2/d$e;->b:J

    return-void
.end method
