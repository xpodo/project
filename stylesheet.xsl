<?xml version="1.0"?>

<!--
    Document   : stylesheet.xsl
    Author     : dpodo
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/save_hry">
        <xsl:for-each select="profil">
            {
            "Hrac":"<xsl:value-of select="jmeno_savu"/>",
            "IP":"<xsl:value-of select="@ip"/>",
            
            "Bankovni ucty":
            <xsl:for-each select="bank_account/account">
                "Cislo uctu":"<xsl:value-of select="@number"/>", "IP banky":"<xsl:value-of select="@bank_ip"/>", "Penize":"<xsl:value-of select="@money"/>",
            </xsl:for-each>
            "Software":
                "Utocny":
                    "Waterwall":<xsl:value-of select="software/offensive/waterwall"/>",
                    "Prolamovac hesel":<xsl:value-of select="software/offensive/pass_breaker"/>",
                    "Ovladac DDos":<xsl:value-of select="software/offensive/DDoS_remote"/>",
                "Obranny":
                    "Firewall":<xsl:value-of select="software/defensive/firewall"/>",
                    "Antivirus":<xsl:value-of select="software/defensive/antivirus"/>",
                    "Skryti souboru":<xsl:value-of select="software/defensive/file_hider"/>",
                "Viry":
                    "Spambot":<xsl:value-of select="software/virus/spam"/>",
                    "Warez":<xsl:value-of select="software/virus/warez_virus"/>",
                    "DDos virus":<xsl:value-of select="software/virus/DDos_virus"/>",
                    "Vyhledavac":<xsl:value-of select="software/virus/tracker"/>",
                "Vydelek":
                    "Mail sender":<xsl:value-of select="software/money_maker/mailer"/>",
                    "FTcash":<xsl:value-of select="software/money_maker/FTcash"/>",
                    "Warez":<xsl:value-of select="software/money_maker/warez"/>",
                "Ostatni nastroje":
                    "Hledani souboru":<xsl:value-of select="software/utility/file_seeker"/>",
                    "Analyzator":<xsl:value-of select="software/utility/analyzer"/>",
                    "Sifrovac":<xsl:value-of select="software/utility/file_encrypter"/>",
                    "Desifrovac":<xsl:value-of select="software/utility/file_derypter"/>",
            "Hardware":
                "CPU":"<xsl:value-of select="hardware/cpu"/>", "Taktovani":"<xsl:value-of select="hardware/cpu/@clocking"/>"
                "Modem":"<xsl:value-of select="hardware/modem"/>", "Rzchlost pripojeni":"<xsl:value-of select="hardware/modem/@connection_speed"/>"
                "HDD":"<xsl:value-of select="hardware/harddrive"/>", "Velikost":"<xsl:value-of select="hardware/harddrive/@hdd_storage"/>"
                "Externi HDD":"<xsl:value-of select="hardware/extern_hdd"/>", "Velikost":"<xsl:value-of select="hardware/exterm_hdd/@ext_storage"/>"
            "Hacknute PC"                    
            <xsl:for-each select="hacked_ips/slave">
                "Jmeno":"<xsl:value-of select="@name"/>", "IP":"<xsl:value-of select="@ip"/>", "Aktivni virus":"<xsl:value-of select="@assigned"/>",
            </xsl:for-each>
                    }
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
