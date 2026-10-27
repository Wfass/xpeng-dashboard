.class Layv$a;
.super Ljava/lang/Object;
.source "NetRadioCollectManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Layv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Layv;

    invoke-direct {v0}, Layv;-><init>()V

    sput-object v0, Layv$a;->a:Layv;

    return-void
.end method
