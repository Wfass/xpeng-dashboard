.class public Lcom/xiaopeng/aicabin/logic/a$a;
.super Ljava/lang/Object;
.source "LogicManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/logic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

.field public final b:J


# direct methods
.method public constructor <init>(JLcom/xiaopeng/aicabin/logic/IAsyncLogic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/xiaopeng/aicabin/logic/a$a;->a:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    .line 3
    iput-wide p1, p0, Lcom/xiaopeng/aicabin/logic/a$a;->b:J

    return-void
.end method
