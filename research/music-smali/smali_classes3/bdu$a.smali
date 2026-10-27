.class Lbdu$a;
.super Ljava/lang/Object;
.source "MusicAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbdu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lbdu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbdu;-><init>(Lbdu$1;)V

    sput-object v0, Lbdu$a;->a:Lbdu;

    return-void
.end method
