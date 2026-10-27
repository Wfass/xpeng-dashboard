.class Lbca$a;
.super Ljava/lang/Object;
.source "AiSuggestMediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbca;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lbca;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbca;-><init>(Lbca$1;)V

    sput-object v0, Lbca$a;->a:Lbca;

    return-void
.end method
