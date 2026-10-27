.class Lbbz$a;
.super Ljava/lang/Object;
.source "MainPageModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbbz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lbbz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbz;-><init>(Lbbz$1;)V

    sput-object v0, Lbbz$a;->a:Lbbz;

    return-void
.end method
