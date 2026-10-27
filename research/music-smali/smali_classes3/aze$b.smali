.class Laze$b;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Laze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Laze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laze;-><init>(Laze$1;)V

    sput-object v0, Laze$b;->a:Laze;

    return-void
.end method
