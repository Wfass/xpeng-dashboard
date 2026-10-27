.class final Lcom/alibaba/fastjson2/d$f;
.super Ljava/lang/Object;
.source "JSONFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson2/d$f;->a:Ljava/lang/String;

    .line 87
    iput-wide p2, p0, Lcom/alibaba/fastjson2/d$f;->b:J

    .line 88
    iput-wide p4, p0, Lcom/alibaba/fastjson2/d$f;->c:J

    return-void
.end method
