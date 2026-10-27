.class Lbch$a;
.super Ljava/lang/Object;
.source "KugouLocalLoveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lbch;

    invoke-direct {v0}, Lbch;-><init>()V

    sput-object v0, Lbch$a;->a:Lbch;

    return-void
.end method
