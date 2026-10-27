.class Laog$a;
.super Ljava/lang/Object;
.source "GlobalGsonInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Laog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laog;-><init>(Laog$1;)V

    sput-object v0, Laog$a;->a:Laog;

    return-void
.end method
