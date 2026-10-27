.class Lbnz$a;
.super Ljava/lang/Object;
.source "SearchManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbnz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lbnz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbnz;-><init>(Lbnz$1;)V

    sput-object v0, Lbnz$a;->a:Lbnz;

    return-void
.end method
