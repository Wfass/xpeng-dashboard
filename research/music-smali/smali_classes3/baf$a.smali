.class Lbaf$a;
.super Ljava/lang/Object;
.source "MusicInfoOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbaf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lbaf;

    invoke-direct {v0}, Lbaf;-><init>()V

    sput-object v0, Lbaf$a;->a:Lbaf;

    return-void
.end method
