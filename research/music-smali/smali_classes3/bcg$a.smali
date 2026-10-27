.class Lbcg$a;
.super Ljava/lang/Object;
.source "KugouMusicCollectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lbcg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbcg;-><init>(Lbcg$1;)V

    sput-object v0, Lbcg$a;->a:Lbcg;

    return-void
.end method
