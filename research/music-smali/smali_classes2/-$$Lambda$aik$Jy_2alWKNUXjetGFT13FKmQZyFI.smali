.class public final synthetic L-$$Lambda$aik$Jy_2alWKNUXjetGFT13FKmQZyFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/content/pm/PackageInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aik$Jy_2alWKNUXjetGFT13FKmQZyFI;->f$0:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, L-$$Lambda$aik$Jy_2alWKNUXjetGFT13FKmQZyFI;->f$0:Landroid/content/pm/PackageInfo;

    check-cast p1, Laim;

    invoke-static {v0, p1}, Laik;->lambda$Jy_2alWKNUXjetGFT13FKmQZyFI(Landroid/content/pm/PackageInfo;Laim;)Z

    move-result p1

    return p1
.end method
