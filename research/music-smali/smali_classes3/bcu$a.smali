.class Lbcu$a;
.super Ljava/lang/Object;
.source "NeteaseMusicCollectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lbcu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbcu;-><init>(Lbcu$1;)V

    sput-object v0, Lbcu$a;->a:Lbcu;

    return-void
.end method
