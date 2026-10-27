.class Laze$a$1$1;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/user/ReadingListAlbumsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Laze$a$1;


# direct methods
.method constructor <init>(Laze$a$1;Ljava/util/List;)V
    .locals 0

    .line 187
    iput-object p1, p0, Laze$a$1$1;->b:Laze$a$1;

    iput-object p2, p0, Laze$a$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 190
    iget-object v0, p0, Laze$a$1$1;->b:Laze$a$1;

    iget-object v0, v0, Laze$a$1;->a:Laze$a;

    iget-object v1, p0, Laze$a$1$1;->a:Ljava/util/List;

    iget-object v2, p0, Laze$a$1$1;->b:Laze$a$1;

    iget-object v2, v2, Laze$a$1;->a:Laze$a;

    invoke-static {v2}, Laze$a;->a(Laze$a;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Laze$a;->a(Laze$a;Ljava/util/List;J)V

    .line 191
    iget-object v0, p0, Laze$a$1$1;->b:Laze$a$1;

    iget-object v0, v0, Laze$a$1;->a:Laze$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laze$a;->a(Laze$a;Z)V

    return-void
.end method
