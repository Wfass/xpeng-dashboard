.class Layt$a$3;
.super Ljava/lang/Object;
.source "MusicFetchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layt$a;->a(Ljava/util/List;JIIZZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layt$a;


# direct methods
.method constructor <init>(Layt$a;)V
    .locals 0

    .line 500
    iput-object p1, p0, Layt$a$3;->a:Layt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 503
    new-instance v0, Lbfh$f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbfh$f;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
