.class Laxf$a;
.super Ljava/lang/Object;
.source "BlueMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laxf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Laxf;

    invoke-direct {v0}, Laxf;-><init>()V

    sput-object v0, Laxf$a;->a:Laxf;

    return-void
.end method
