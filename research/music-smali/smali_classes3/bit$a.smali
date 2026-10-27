.class Lbit$a;
.super Ljava/lang/Object;
.source "RankDataOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lbit;

    invoke-direct {v0}, Lbit;-><init>()V

    sput-object v0, Lbit$a;->a:Lbit;

    return-void
.end method
