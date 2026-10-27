.class Lbek$a;
.super Ljava/lang/Object;
.source "KugouManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbek;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lbek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbek;-><init>(Lbek$1;)V

    sput-object v0, Lbek$a;->a:Lbek;

    return-void
.end method
